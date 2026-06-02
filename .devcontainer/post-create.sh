#!/usr/bin/env bash
set -euo pipefail

# Install Python dependencies via uv
uv sync

# Auto-activate .venv in new terminals
echo "source ${WORKSPACE_DIR:-/workspaces/llm-engineering}/.venv/bin/activate" >> ~/.bashrc

npm install -g \
  @google/gemini-cli \
  opencode-ai
