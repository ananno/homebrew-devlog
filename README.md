# Homebrew Tap for Devlog

This is a Homebrew tap for **devlog** — an enterprise-grade, privacy-first AI changelog generator.

## Installation

```bash
# Add the tap
brew tap ananno/devlog

# Install devlog
brew install devlog
```

## What is Devlog?

Devlog transforms Git commit history into intelligent, human-readable changelogs while keeping your code and data completely private. Built for enterprise use with a local-first architecture.

### Key Features

🔐 **Privacy-First** — Code diffs never leave your machine by default  
🚀 **Enterprise-Ready** — Self-hosted LLM support (Ollama, llama.cpp)  
⚙️ **Flexible** — Plain mode, local LLMs, or optional cloud (explicit opt-in)  
📊 **Smart Analysis** — Analyzes actual code changes, not just commit messages  
📝 **Multiple Formats** — Markdown and JSON output

## Quick Start

```bash
# No AI required - plain mode
devlog --repo . --output CHANGELOG.md

# With local Ollama (completely private)
ollama run mistral
devlog --repo . --llm ollama --llm-model mistral

# With local llama.cpp
./server -m model.gguf -ngl 33
devlog --repo . --llm ollama --llm-model local

# Cloud (when needed - explicit opt-in)
devlog --repo . --llm anthropic --allow-cloud --privacy-level strict
```

## Usage Examples

### Generate Changelog
```bash
devlog --repo . --output CHANGELOG.md
```

### Analyze Code Changes (AI-Powered)
```bash
devlog --repo . --llm ollama --llm-model mistral
```

### Group by Feature
```bash
devlog --repo . --group-by-type --output CHANGELOG.md
```

### Version Range
```bash
devlog --repo . --from v1.0 --to v2.0
```

### Export as JSON
```bash
devlog --repo . --format json --output changelog.json
```

### Include Author Attribution
```bash
devlog --repo . --authors --output CHANGELOG.md
```

### Plain Mode (No AI)
```bash
devlog --repo . --output CHANGELOG.md
```

## Documentation

Full documentation available at: https://gitlab.com/aice/devlog

- **Getting Started** — Installation & setup
- **Configuration Guide** — API keys, providers, options
- **Features & Examples** — Full feature reference
- **Troubleshooting** — Common issues & solutions

## Requirements

- **Rust** 1.70+
- **Git** repository (to analyze)
- **Optional:** API key for cloud LLMs (Claude, OpenAI)
- **Optional:** Local LLM server (Ollama, llama.cpp)

## Enterprise Use

Devlog is designed for enterprise teams who need:

✅ **Privacy & Compliance** — GDPR-friendly, no vendor lock-in  
✅ **Self-Hosted LLMs** — Ollama, llama.cpp support  
✅ **Offline Operation** — Works completely without internet  
✅ **Privacy Controls** — 3-level privacy settings (strict, moderate, relaxed)  
✅ **Full Audit Trail** — Local processing, complete transparency  

## Project Quality

- ✅ 287 unit tests (all passing)
- ✅ 5 documentation tests (all passing)
- ✅ Security: cargo-audit passing
- ✅ MIT licensed
- ✅ Enterprise-ready codebase

## Repository

- **GitLab:** https://gitlab.com/aice/devlog
- **Issues:** https://gitlab.com/aice/devlog/-/issues
- **License:** MIT

## Support

For issues, questions, or feature requests:
- GitHub Issues (this tap): Coming soon
- GitLab Issues (main project): https://gitlab.com/aice/devlog/-/issues

## License

MIT License — See [LICENSE](https://gitlab.com/aice/devlog/-/blob/main/LICENSE)

---

**Tap Maintainer:** [ananno](https://github.com/ananno)

**Last Updated:** April 7, 2026
