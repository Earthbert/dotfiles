#!/bin/bash

PROFILE_DIR=$(find "$HOME/.mozilla/firefox" -maxdepth 1 -type d -name "*.default-release" | head -n 1)
SOURCE_FILE="$HOME/.config/firefox-data/permissions.sqlite"

if [ -n "$PROFILE_DIR" ] && [ -f "$SOURCE_FILE" ]; then
    echo "Deploying encrypted permissions.sqlite to $PROFILE_DIR"
    cp "$SOURCE_FILE" "$PROFILE_DIR/permissions.sqlite"
else
    echo "Firefox profile not found. Skipping sync."
fi