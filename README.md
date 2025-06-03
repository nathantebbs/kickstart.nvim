# 💤 Neovim Configuration

This is my personal Neovim configuration, forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) and extended to suit my development workflow. It includes enhanced language support, a streamlined UI, modern plugins, and sane defaults out of the box.

## 🚀 Features

- 🧠 **Plugin Management**: Powered by [`lazy.nvim`](https://github.com/folke/lazy.nvim)
- 💻 **LSP Setup**: Mason + `nvim-lspconfig` for fast, minimal Language Server support
- 🔎 **Fuzzy Finder**: Telescope with FZF and UI Select extensions
- 🖋️ **Autocompletion**: [`blink.cmp`](https://github.com/saghen/blink.cmp) with snippet and signature help support
- 🎨 **Colorscheme**: [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- 🧼 **Formatter**: [`conform.nvim`](https://github.com/stevearc/conform.nvim) with language-specific fallback logic
- 🌳 **Syntax Highlighting**: Treesitter with auto-tag and HTML/CSS IntelliSense
- 🔍 **Keybinding Discoverability**: [`which-key`](https://github.com/folke/which-key.nvim)
- ✅ **Git Integration**: Gitsigns and TODO-comments
- 📜 **Statusline**: Minimal, icon-enhanced `mini.statusline` + optional `lualine`
- 📁 **File Tree**: [`neo-tree.nvim`](https://github.com/nvim-neo-tree/neo-tree.nvim)
- 🛠 **Auto-pairs, linters, extras** via modular `kickstart.plugins.*`

## 🧰 Installation

Clone and symlink this repo as your Neovim config:

```bash
git clone https://github.com/YOUR_USERNAME/kickstart.nvim ~/.dotfiles/nvim
ln -s ~/.dotfiles/nvim ~/.config/nvim
