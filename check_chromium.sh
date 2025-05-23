#!/bin/bash

# Check if Chromium is installed
if ! command -v chromium &> /dev/null; then
    echo "Chromium is not installed. Please install it first."
    exit 1
fi

# Get Chromium version
chromium --version

# Check if Flutter web support is properly set up
flutter devices
