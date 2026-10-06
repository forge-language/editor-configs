# Forge support for Vim8/Vim9 + vim-lsp

Filetype detection, syntax highlighting, and `forge-lsp` registration for `.fg` files, built on top of
[prabirshrestha/vim-lsp](https://github.com/prabirshrestha/vim-lsp) (an external dependency — install it
separately with your plugin manager).

## Setup

With a plugin manager (e.g. vim-plug):

```vim
Plug 'prabirshrestha/vim-lsp'
Plug '/path/to/editor-configs/vim'
```

or add the directory to `'runtimepath'` manually:

```vim
set runtimepath+=/path/to/editor-configs/vim
```

## Requirements

Install `forge-lsp` from [forge-language/forge-lsp](https://github.com/forge-language/language-server) and put its executable on `$PATH`. Set `g:forge_lsp_path` to an explicit executable path if needed.

The server is attached only when it is available. Vim also requires vim-lsp.

## Verifying

Open an `.fg` file and run `:LspStatus` to confirm the `forge-lsp` server registered, then check hover
(`:LspHover`) and diagnostics.
