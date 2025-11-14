# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository for macOS system configuration. It manages shell configuration (zsh with Oh My Zsh), Neovim setup (AstroNvim v5+), terminal emulator (Kitty), and various development tools.

## Architecture

### Configuration Structure

- **Shell**: Oh My Zsh with custom configuration in `oh-my-zsh-custom/`
  - `zshrc`: Main zsh configuration, sets up Powerlevel10k theme, NVM, plugins (git, gh, macos)
  - `aliases.zsh`: Custom shell aliases (e.g., `vi=nvim`, `lg=lazygit`)
  - `environment_variables.zsh`: Path setup and environment variables (pulls secrets from 1Password CLI)

- **Neovim**: Based on AstroNvim v5+ template (located in `nvim/`)
  - Entry point: `nvim/init.lua` bootstraps Lazy.nvim plugin manager
  - Configuration files in `nvim/lua/`
  - Uses lazy loading for plugins

- **Terminal**: Kitty configuration in `kitty/kitty.conf`

- **Git**: Configuration in `gitconfig` with:
  - Aliases: co (checkout), st (status), ci (commit), rb (rebase), lg (log), mff (merge --no-ff), dc (diff --cached)
  - GPG signing via 1Password SSH agent
  - GitHub CLI credential helper

### Installation Scripts

Setup is orchestrated through `setup.sh` which calls modular scripts in `script/`:
- `install_homebrew.sh`: Install Homebrew package manager
- `install_omz.sh`: Install Oh My Zsh
- `install_nvm.sh`: Install Node Version Manager
- `install_sdkman.sh`: Install SDKMAN (Java version manager)
- `install_gcloud_components.sh`: Install Google Cloud components
- `link_dotvim.sh`: Link vim configuration
- `link_nvim.sh`: Link neovim configuration

`symlink_dotfiles.sh` creates symlinks for configuration files:
- `p10k.zsh` → `~/.p10k.zsh`
- `gitconfig` → `~/.gitconfig`
- `kitty/` → `~/.config/kitty`

## Common Commands

### Setup & Installation

```bash
# Full system setup (first time)
./setup.sh

# Bootstrap SSH keys for GitHub
./boostrap.sh

# Update symlinks only
./symlink_dotfiles.sh

# Install packages from Brewfile
brew bundle
```

### Package Management

Key packages managed via `Brewfile`:
- Development: `neovim`, `gh`, `git`, `fzf`, `ripgrep`, `jq`
- Shell: `powerlevel10k`, `thefuck`
- CLI tools: `ack`, `tree`, `watch`, `wget`
- Applications: `kitty`, `rectangle`, `alfred`, `1password-cli`

### Shell Customization

```bash
# Reload zsh configuration
zshreload  # or: omz reload

# Edit zsh config
zshconfig  # or: vi ~/.zshrc

# Show/hide hidden files in Finder
showhidden
hidehidden
```

### Development Tools

- **Editor**: `vi` (aliased to `nvim`)
- **Git UI**: `lg` (aliased to `lazygit`)
- **Node**: NVM auto-switches based on `.nvmrc` in directories
- **1Password**: Environment variables loaded via `op read` commands

## Key Features

1. **1Password Integration**: Secrets (GitHub PAT, API keys) pulled from 1Password vault via CLI
2. **NVM Auto-switching**: Automatically uses correct Node version when changing directories
3. **GPG Commit Signing**: Git commits signed via 1Password SSH agent
4. **Powerlevel10k**: Fast, customizable prompt theme
5. **Custom PATH**: Includes `~/dotfiles/bin`, `~/.local/bin`, `~/bin` for personal scripts

## Maintenance Notes

- The `nvim/` directory is based on AstroNvim v5+ template - avoid editing `init.lua` directly
- Zsh custom configuration lives in `oh-my-zsh-custom/` to avoid being overwritten by Oh My Zsh updates
- Git config includes user-specific signing key and 1Password SSH agent path
- Package installations use `tree-sitter-cli` as Node dependency for Neovim parsing
