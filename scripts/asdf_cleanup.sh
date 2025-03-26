#!/usr/bin/env bash

# Remove older versions of asdf plugins, keeping only the latest version

# Get all installed plugins
plugins=$(asdf plugin list)

# Iterate through each plugin
for plugin in $plugins; do
    echo "Processing $plugin..."
    
    # Get the latest version of the plugin
    latest_version=$(asdf latest $plugin)
    if [ -z "$latest_version" ]; then
        echo "No versions found for $plugin. Skipping..."
        continue
    fi

    echo "Latest version of $plugin: $latest_version"

    # List all installed versions and remove all except the latest
    asdf list $plugin | grep -v "$latest_version" | while read -r old_version; do
        echo "Removing old version: $old_version"
        asdf uninstall $plugin "$old_version"
    done
done

echo "Old versions removed successfully."

