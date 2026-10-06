# Forge support for Neovim

Filetype detection, syntax highlighting, and native `forge-lsp` attachment for `.fg` files.

## Setup

Add this directory to your `runtimepath`, e.g. with a plugin manager pointed at the repo:

```lua
-- lazy.nvim
{ dir = '/path/to/editor-configs/nvim', name = 'forge.nvim' }
```

or manually:

```lua
vim.opt.runtimepath:append('/path/to/editor-configs/nvim')
```

## Requirements

Install `forge-lsp` from [forge-language/forge-lsp](https://github.com/forge-language/language-server) and put its executable on `$PATH`. Set `vim.g.forge_lsp_path` to an explicit executable path if needed.

The server is attached only when it is available. Neovim 0.10 or newer is required for the native LSP API.

## Verifying

Open an `.fg` file and run `:LspInfo` (requires `nvim-lspconfig` or Neovim's built-in `:checkhealth vim.lsp`) to confirm the `forge-lsp` client attached, then check hover (`K`) and diagnostics.
