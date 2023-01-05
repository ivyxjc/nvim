" theme
Plug 'joshdick/onedark.vim'

" float terminal
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle']}
" fzf search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}

" git
Plug 'tpope/vim-fugitive', {'on': ['Gwrite', 'Gcommit', 'Gread', 'Gdiff', 'Gblame']}
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'

" status line
" Plug 'itchyny/lightline.vim' ( conflict with plugin nvim-bufferline.lua)
"Plug 'glepnir/galaxyline.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'glepnir/spaceline.vim'

" file tree
"if has('nvim')
"  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/defx.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"Plug 'kristijanhusak/defx-icons'


" file tree 
"Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'

" buffer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'akinsho/nvim-bufferline.lua'

" file tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" ranger for vim
Plug 'kevinhwang91/rnvimr'


"dashboard
Plug 'glepnir/dashboard-nvim'

" comment
Plug 'tpope/vim-commentary'

"-----------------------------
" programming starts
"-----------------------------
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}

" snippets
Plug 'honza/vim-snippets'

"Plug 'nvim-lua/completion-nvim'
"Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
" auto completion for bracket, quote...
Plug 'Raimondi/delimitMate'
Plug 'luochen1990/rainbow'


" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" clojure
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'tami5/vim-iced-compe', {'for': 'clojure'}
Plug 'guns/vim-sexp', {'for': 'clojure'}



""-----------------------------
" programming starts
"------------------------------

