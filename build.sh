#!/bin/bash
set -e

# Ensure Hugo is available
if ! command -v hugo &> /dev/null; then
    echo "Hugo not found, installing..."
    # This will be handled by Netlify's Hugo installation
    exit 1
fi

# Build the site
hugo --gc --minify --environment production 