#!/usr/bin/env bash
# Yorumi theme installer for Kitty (Linux & macOS)
set -euo pipefail

DEST_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/kitty/themes"
mkdir -p "$DEST_DIR"

RAW_BASE="https://raw.githubusercontent.com/yorumicolors/kitty/main"
FILES=("yorumi-ether.conf" "yorumi-abyss.conf" "yorumi-bifrost.conf" "yorumi-kraken.conf" "yorumi-kabocha.conf" "yorumi-cosmic.conf" "yorumi-ryujin.conf")

SCRIPT_DIR=""
if [[ -n "${BASH_SOURCE[0]:-}" ]]; then
  SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || echo "")"
fi

echo "Installing Yorumi theme for Kitty..."

for f in "${FILES[@]}"; do
  basename_f="$(basename "$f")"
  target="$DEST_DIR/$basename_f"
  if [[ -n "$SCRIPT_DIR" && -f "$SCRIPT_DIR/$f" ]]; then
    cp "$SCRIPT_DIR/$f" "$target"
  elif [[ -n "$SCRIPT_DIR" && -f "$SCRIPT_DIR/$basename_f" ]]; then
    cp "$SCRIPT_DIR/$basename_f" "$target"
  else
    curl -fsSL "$RAW_BASE/$f" -o "$target"
  fi
  echo "✓ Installed: $target"
done

cat << 'INFO'

Successfully installed Yorumi for Kitty!
Include the theme in `~/.config/kitty/kitty.conf`:
    include themes/yorumi-abyss.conf
INFO
