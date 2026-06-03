# LLM Engineering — Dev Container Setup

> Ed Donner's [LLM Engineering course](https://www.udemy.com/course/llm-engineering-master-ai-and-large-language-models/) running in a fully configured dev container with Python 3.13, `uv`, Jupyter, and AI coding assistants ready out of the box.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mr-pedro-damasio/llm-engineering)

---

## Overview

This repository contains the course code for [LLM Engineering - Master AI and LLMs](https://www.udemy.com/course/llm-engineering-master-ai-and-large-language-models/) by Edward Donner, adapted to run in a GitHub Codespaces / VS Code dev container environment.

The original course targets an Anaconda + local environment setup. This fork replaces that with:

- **Python 3.13** via the official Microsoft dev container image
- **`uv`** as the package manager (replaces Anaconda/conda)
- **GitHub Codespaces** as the primary development environment
- **Cloud APIs only** — Ollama and local model installs are skipped; all models are accessed via OpenAI, Anthropic, Google, and similar APIs

For full course content, week-by-week structure, and project descriptions, see [README_PROJECT.md](README_PROJECT.md).

---

## Quick Start

### Option 1 — GitHub Codespaces (recommended)

1. Click **Open in GitHub Codespaces** above, or go to **Code → Codespaces → New codespace**.
2. Wait for the environment to build — `uv sync` runs automatically and installs all dependencies into `.venv`.
3. Copy `.env.example` to `.env` and add your API keys.
4. Open any notebook in `week1/` and select the `.venv` Python kernel to begin.

### Option 2 — Local Dev Container

**Prerequisites:** [Docker Desktop](https://www.docker.com/products/docker-desktop) and the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for VS Code.

1. Clone the repository.
2. Open the project in VS Code.
3. When prompted, click **Reopen in Container** (or run `Dev Containers: Reopen in Container` from the command palette).
4. Copy `.env.example` to `.env` and add your API keys.
5. Open any notebook and select the `.venv` Python kernel.

---

## Environment Variables

All API keys and configuration are managed via `.env`. Copy the example file and fill in the values you need for the weeks you are working on:

```bash
cp .env.example .env
# Edit .env with your API keys
```

Typical keys used across the course: `OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, `GOOGLE_API_KEY`, `HF_TOKEN`, and others introduced week by week.

> **Never commit `.env` to version control.**

---

## What's Included

| Component | Details |
|-----------|---------|
| Python runtime | 3.13 (Microsoft devcontainers image) |
| Package manager | [`uv`](https://docs.astral.sh/uv/) — fast, lockfile-based |
| Notebooks | VS Code Jupyter extension, kernel from `.venv` |
| Dependencies | Defined in `pyproject.toml`, locked in `uv.lock` |
| AI assistants | Claude Code, GitHub Copilot, Gemini Code Assist, opencode |

---

## AI Coding Assistants

The following tools are pre-installed and available in the environment:

| Tool | CLI | VS Code Extension |
|------|-----|-------------------|
| [Claude Code](https://claude.ai/code) | `claude` | Anthropic Claude Code |
| [GitHub Copilot](https://github.com/features/copilot) | — | GitHub Copilot |
| [Gemini CLI](https://github.com/google-gemini/gemini-cli) | `gemini` | Gemini Code Assist |
| [opencode](https://opencode.ai) | `opencode` | — |

---

## Differences from the Original Course Setup

| Original course | This setup |
|----------------|------------|
| Anaconda / conda | `uv` + `pyproject.toml` |
| Local Python install | Dev container (Python 3.13) |
| Ollama for local models | Not included — use cloud APIs |
| Any OS | GitHub Codespaces or Docker |

The course notebooks work without modification. Only the environment setup differs — follow the Quick Start above instead of the Anaconda instructions in the course materials.

---

## Dev Container Template

This project's dev container configuration is based on the [zero-config-devcontainer](https://github.com/mr-pedro-damasio/zero-config-devcontainer) template — a language-agnostic GitHub template with Codespaces support and AI coding assistants pre-configured.

---

## License

Course content © Edward Donner. Dev container configuration [MIT](LICENSE) © 2026 mr-pedro-damasio.
