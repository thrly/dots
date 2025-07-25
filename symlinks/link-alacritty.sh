#!/bin/bash

# Get the directory containing this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Go one level up to reach the root of the dots repo
DOTFILES_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

SOURCE="$DOTFILES_DIR/alacritty"
TARGET="$HOME/.config/alacritty"

echo "SCRIPT_DIR    = $SCRIPT_DIR"
echo "DOTFILES_DIR  = $DOTFILES_DIR"
echo "SOURCE        = $SOURCE"
echo "TARGET        = $TARGET"

# Check that source exists
if [ ! -d "$SOURCE" ]; then
  echo "❌ Source directory does not exist: $SOURCE"
  exit 1
fi

# Remove existing target
if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
  echo "🧹 Removing existing $TARGET..."
  rm -rf "$TARGET"
fi

# Create symlink
ln -s "$SOURCE" "$TARGET"

# Verify result
if [ -L "$TARGET" ]; then
  echo "✅ Symlink created: $TARGET → $(readlink -f "$TARGET")"
else
  echo "❌ Failed to create symlink."
  exit 1
fi
