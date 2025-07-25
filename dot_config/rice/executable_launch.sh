#!/bin/bash

echo "🚀 Launching AeroSpace setup..."

# Launch AeroSpace if not running
if ! pgrep -f "AeroSpace" > /dev/null; then
    echo "Starting AeroSpace..."
    open -a AeroSpace
    sleep 2
fi

# Reload Aerospace configuration
echo "Reloading AeroSpace configuration..."
aerospace reload-config

echo "✨ AeroSpace launched successfully!"
echo "Tips:"
echo "  - Use Alt+1-9 to switch workspaces"
echo "  - Use Alt+H/J/K/L to focus windows"
echo "  - Use Alt+Shift+H/J/K/L to move windows"
echo "  - Use Alt+Shift+; for service mode"
echo "  - Hide the dock with: defaults write com.apple.dock autohide -bool true && killall Dock"