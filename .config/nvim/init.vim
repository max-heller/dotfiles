call plug#begin('~/.local/share/nvim/plugged')

" Snippet support
Plug 'honza/vim-snippets'

" Undo tree visualizer
Plug 'simnalamburt/vim-mundo'

" Adds more targets for operating on with i, I, a, A
Plug 'wellle/targets.vim'

" Highlight unique characters in every word on a line to help you use f, F
Plug 'unblevable/quick-scope'

" Yank history
Plug 'bfredl/nvim-miniyank'

" Changes working directory to project root on navigation
Plug 'airblade/vim-rooter'

" Aligning text by specific characters
Plug 'tommcdo/vim-lion'

" Git support
Plug 'tpope/vim-fugitive'

" Remaps . in a way plugins can tap into it
Plug 'tpope/vim-repeat'

" Easy commenting (gc)
Plug 'tpope/vim-commentary'

" Highlight yanked text
Plug 'machakann/vim-highlightedyank'

" Start page
Plug 'mhinz/vim-startify'

" Enables/disables search highlighting at appropriate times
Plug 'romainl/vim-cool'

" Lightline (status line)
Plug 'itchyny/lightline.vim'

" fzf (fuzzy searcher)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Latex support
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Solarized theme
Plug 'lifepillar/vim-solarized8'

" Syntastic is a syntax checking plugin
" It runs files through external syntax checkers and displays any
" resulting errors to the user
Plug 'scrooloose/syntastic'

" Rust file detection, syntax highlighting, formatting,
" Syntastic integration, and more
Plug 'rust-lang/rust.vim'

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'tjdevries/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" Language server status in status line
Plug 'nvim-lua/lsp-status.nvim'

call plug#end()
