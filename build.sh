#!/bin/bash

# Version
VERSION="1.6.0"

# Build for macOS ARM64 (Apple Silicon)
echo "Building for macOS ARM64..."
GOOS=darwin GOARCH=arm64 go build -o "shovel-darwin-arm64-${VERSION}" -ldflags="-s -w" ./cmd/shovel

# Build for Linux AMD64
echo "Building for Linux AMD64..."
GOOS=linux GOARCH=amd64 go build -o "shovel-linux-amd64-${VERSION}" -ldflags="-s -w" ./cmd/shovel

# Move binaries to ../indexer/
echo "Moving binaries to ../indexer/..."
mv "shovel-darwin-arm64-${VERSION}" "../indexer/"
mv "shovel-linux-amd64-${VERSION}" "../indexer/"

echo "Build complete!"
echo "Binaries moved to ../indexer/:"
echo "../indexer/shovel-darwin-arm64-${VERSION}"
echo "../indexer/shovel-linux-amd64-${VERSION}"
