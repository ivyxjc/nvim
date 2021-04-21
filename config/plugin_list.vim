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
 Plug 'itchyny/lightline.vim'