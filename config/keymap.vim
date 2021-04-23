"-----------------------------------------------------------------------------
" basic keymap 
"-----------------------------------------------------------------------------

"windows split
nnoremap <silent> <leader>vv :vsp<CR>
nnoremap <silent> <leader>vh :sp<CR>

"copy, paste and save
noremap <C-s> :w<CR>
inoremap <C-s> <c-o>:w<CR>
nnoremap <silent> <C-a> ggVG
vnoremap <silent> <C-c> "+y

"choose window
nnoremap <silent> <leader>wh <c-w>h<CR>
nnoremap <silent> <leader>j <c-w>j<CR>
nnoremap <silent> <leader>k <c-w>k<CR>
nnoremap <silent> <leader>l <c-w>l<CR>
nnoremap <silent> <leader>q :q<CR>

"close uand delete buffer
nnoremap <silent> <leader>bd :bd<CR>


"-----------------------------------------------------------------------------
" fzf 
"-----------------------------------------------------------------------------
"使用ctrl jk上下移动选项
augroup vime_fzf_group
    autocmd!
    au FileType fzf tnoremap <buffer> <C-j> <Down>
    au FileType fzf tnoremap <buffer> <C-k> <Up>
    au FileType fzf tnoremap <buffer> <Esc> <c-g>
augroup END

"nnoremap <silent> <leader>ff  :Files<CR>
"prevent fzf open files inside NERDTree buffer
"ref https://github.com/junegunn/fzf/issues/453 
nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <leader>fb  :Buffers<CR>
nnoremap <silent> <leader>fw  :Windows<CR>
nnoremap <silent> <leader>fa  :Rg<CR>
nnoremap <silent> <leader>fs  :BLines<CR>
nnoremap <silent> <leader>fh  :History<CR>
nnoremap <silent> <c-f>       :BLines<CR>
nnoremap <silent> <c-F>       :Rg<CR>

"-----------------------------------------------------------------------------
" float terminal
"-----------------------------------------------------------------------------
nmap <silent> <M-+> :FloatermNew<cr>
nmap <silent> <M-=> :FloatermToggle<cr>
tnoremap <silent> <M-+> <c-\><c-n>:FloatermNew<cr>
tnoremap <silent> <M-=> <c-\><c-n>:FloatermToggle<cr>

augroup vime_floaterm_group
    autocmd!
    au FileType floaterm tnoremap <buffer> <silent> <M-h> <c-\><c-n>:FloatermPrev<CR>
    au FileType floaterm tnoremap <buffer> <silent> <M-l> <c-\><c-n>:FloatermNext<CR>
augroup END

"-----------------------------------------------------------------------------
" git starts
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
" gitgutter
"-----------------------------------------------------------------------------
" 导航到修改块
nnoremap <leader>gj :GitGutterNextHunk<cr>
nnoremap <leader>gk :GitGutterPrevHunk<cr>
" 显示光标处的修改信息
nnoremap <leader>gp :GitGutterPreviewHunk<cr>
" 撤销当前块的修改
nnoremap <leader>gu :GitGutterUndoHunk<cr>
nnoremap <leader>gh :GitGutterStageHunk<cr>

"-----------------------------------------------------------------------------
" fugitive
"-----------------------------------------------------------------------------
" 添加当前文件到index
" nnoremap <leader>gw <esc>:Gwrite<cr>
" 提交
" nnoremap <leader>gc <esc>:Gcommit<cr>
" 恢复当前文件到上个版本
" nnoremap <leader>gr <esc>:Gread<cr>
" 查看当前文件与提交文件的不同
nnoremap <leader>gf <esc>:Gdiff<cr>
"
" nnoremap <leader>gb <esc>:Gblame<cr>

"-----------------------------------------------------------------------------
" lazy git
"-----------------------------------------------------------------------------
nnoremap <silent> <leader>gt :LazyGit<CR>

"-----------------------------------------------------------------------------
" git ends
"-----------------------------------------------------------------------------


""-----------------------------------------------------------------------------
" rnvimr 
""-----------------------------------------------------------------------------
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>


""-----------------------------------------------------------------------------
" nerdtree
""-----------------------------------------------------------------------------
nnoremap <leader>tt :NERDTreeToggle<CR>

""-----------------------------------------------------------------------------
" programming starts
""-----------------------------------------------------------------------------

" lspsaga
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>

" nvim-compe
inoremap <silent><expr> <CR> compe#confirm('<CR>')
inoremap <silent><expr> <C-Space> compe#complete()



""-----------------------------------------------------------------------------
" programming ends
""-----------------------------------------------------------------------------
