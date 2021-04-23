" float terminal
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle']}
" fzf search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}

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

Plug 'kevinhwang91/rnvimr'

Plug 'joshdick/onedark.vim'

