# Shovel Project Notes

## Build Process
- Project uses Go 1.21
- Main binary located in cmd/shovel/
- Use build.sh script to build both Mac and Linux versions:
  ```bash
  ./build.sh
  ```
- Script creates two binaries with version numbers and moves them to ../indexer/:
  - Mac (Apple Silicon): ../indexer/shovel-darwin-arm64-[version]
  - Linux (x86_64): ../indexer/shovel-linux-amd64-[version]
- Build flags:
  - `-ldflags="-s -w"`: Reduces binary size by stripping debug information
  - Output is statically linked Go binary
- Version numbering starts at 1.6.0

## Project Structure
- Main binary: cmd/shovel/main.go
- Multiple packages for different functionalities:
  - bint: Binary integer operations
  - dig: Digging/extraction utilities
  - eth: Ethereum-related functionality
  - jrpc2: JSON-RPC 2.0 client
  - shovel: Core functionality
  - Various utility packages (wctx, wos, wpg, wslog, wstrings)
