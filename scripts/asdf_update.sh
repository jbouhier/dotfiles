#!/usr/bin/env bash

# Update all plugin repositories
asdf plugin update --all

# Get all installed plugins
plugins=$(asdf plugin list)

# Iterate through plugins and install latest version
for plugin in $plugins; do
    latest_version=$(asdf latest $plugin)
    echo "Installing latest version of $plugin: $latest_version"
    asdf install $plugin latest
    asdf set -u $plugin $latest_version
done

echo "All plugins updated to their latest versions."

