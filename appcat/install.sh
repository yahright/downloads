#!/bin/sh
set -eu

if [ "$(uname -s)" != "Darwin" ]; then
  echo "error: this installer supports macOS only" >&2
  exit 1
fi

case "$(uname -m)" in
  arm64) arch="arm64" ;;
  x86_64) arch="amd64" ;;
  *)
    echo "error: unsupported macOS architecture: $(uname -m)" >&2
    exit 1
    ;;
esac

version_url="${APPCAT_VERSION_URL:-https://raw.githubusercontent.com/yahright/downloads/main/appcat/version.txt}"
install_dir="${APPCAT_INSTALL_DIR:-$HOME/.myapps/bin}"
version="$(curl -fsSL "$version_url" | tr -d '[:space:]')"

case "$version" in
  *[!0-9.]*|"")
    echo "error: invalid published version: $version" >&2
    exit 1
    ;;
esac

archive_name="appcat-$version-darwin-$arch.zip"
app_archive_name="AppCat-$version-macos-$arch.zip"
release_base="${APPCAT_RELEASE_BASE:-https://github.com/yahright/downloads/releases/download/appcat-v$version}"
release_base="${release_base%/}"
temporary_dir="$(mktemp -d "${TMPDIR:-/tmp}/appcat-install.XXXXXX")"

cleanup() {
  rm -rf "$temporary_dir"
}
trap cleanup EXIT HUP INT TERM

archive_path="$temporary_dir/$archive_name"
checksum_path="$archive_path.sha256"
curl -fL "$release_base/$archive_name" -o "$archive_path"
curl -fsSL "$release_base/$archive_name.sha256" -o "$checksum_path"

expected="$(awk 'NR == 1 { print tolower($1) }' "$checksum_path")"
actual="$(shasum -a 256 "$archive_path" | awk '{ print tolower($1) }')"
if [ "$actual" != "$expected" ]; then
  echo "error: sha256 mismatch: expected=$expected actual=$actual" >&2
  exit 1
fi

expanded="$temporary_dir/expanded"
mkdir -p "$expanded"
ditto -x -k "$archive_path" "$expanded"
if [ ! -f "$expanded/appcat" ]; then
  echo "error: appcat was not found in the archive" >&2
  exit 1
fi

mkdir -p "$install_dir"
target="$install_dir/appcat"
cp "$expanded/appcat" "$target.new"
chmod 755 "$target.new"
mv -f "$target.new" "$target"

if [ "${APPCAT_SKIP_APP:-0}" != "1" ]; then
  app_archive_path="$temporary_dir/$app_archive_name"
  app_checksum_path="$app_archive_path.sha256"
  curl -fL "$release_base/$app_archive_name" -o "$app_archive_path"
  curl -fsSL "$release_base/$app_archive_name.sha256" -o "$app_checksum_path"

  app_expected="$(awk 'NR == 1 { print tolower($1) }' "$app_checksum_path")"
  app_actual="$(shasum -a 256 "$app_archive_path" | awk '{ print tolower($1) }')"
  if [ "$app_actual" != "$app_expected" ]; then
    echo "error: app sha256 mismatch: expected=$app_expected actual=$app_actual" >&2
    exit 1
  fi

  app_expanded="$temporary_dir/app-expanded"
  mkdir -p "$app_expanded"
  ditto -x -k "$app_archive_path" "$app_expanded"
  if [ ! -x "$app_expanded/AppCat.app/Contents/MacOS/AppCat" ]; then
    echo "error: AppCat.app launcher was not found in the archive" >&2
    exit 1
  fi

  app_install_dir="${APPCAT_APP_DIR:-$HOME/Applications}"
  mkdir -p "$app_install_dir"
  target_app="$app_install_dir/AppCat.app"
  new_app="$app_install_dir/.AppCat.app.new"
  old_app="$app_install_dir/.AppCat.app.old"
  rm -rf "$new_app" "$old_app"
  ditto "$app_expanded/AppCat.app" "$new_app"
  if [ -e "$target_app" ]; then
    mv "$target_app" "$old_app"
  fi
  if ! mv "$new_app" "$target_app"; then
    if [ -e "$old_app" ]; then
      mv "$old_app" "$target_app"
    fi
    exit 1
  fi
  rm -rf "$old_app"
fi

if [ "${APPCAT_SKIP_PATH:-0}" != "1" ]; then
  case "${SHELL:-}" in
    */bash) rc_path="$HOME/.bash_profile" ;;
    *) rc_path="$HOME/.zshrc" ;;
  esac
  if [ ! -f "$rc_path" ] || ! grep -F "# >>> appcat >>>" "$rc_path" >/dev/null 2>&1; then
    if [ -f "$rc_path" ] && [ -s "$rc_path" ]; then
      printf '\n' >>"$rc_path"
    fi
    {
      echo "# >>> appcat >>>"
      echo 'export PATH="$HOME/.myapps/bin:$PATH"'
      echo "# <<< appcat <<<"
    } >>"$rc_path"
  fi
fi

"$target" --version
echo "AppCat installed: $target"
if [ "${APPCAT_SKIP_APP:-0}" != "1" ]; then
  echo "Finder app installed: $target_app"
fi
if [ "${APPCAT_SKIP_PATH:-0}" != "1" ]; then
  echo "Open AppCat from Finder, or open a new terminal and run: appcat ui"
fi
