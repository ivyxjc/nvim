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
nnoremap <silent> <leader>h <c-w>h<CR>
nnoremap <silent> <leader>j <c-w>j<CR>
nnoremap <silent> <leader>k <c-w>k<CR>
nnoremap <silent> <leader>l <c-w>l<CR>
nnoremap <silent> <leader>q :q<CR>

"close uand delete buffer
nnoremap <silent> <leader>bd :bd<CR>

"nvim <alt-p> prev <alt-n> next
noremap <m-p> <c-o>
noremap <m-n> <c-i>


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
nmap <silent> <C-t> :FloatermToggle<CR>
tnoremap <silent> <C-t> <c-\><c-n>:FloatermToggle<cr>

nmap <silent> <M-+> :FloatermNew<cr>
tnoremap <silent> <M-+> <c-\><c-n>:FloatermNew<cr>


augroup vime_floaterm_group
    autocmd!
    au FileType floaterm tnoremap <buffer> <silent> <M-h> <c-\><c-n>:FloatermPrev<CR>
    au FileType floaterm tnoremap <buffer> <silent> <M-l> <c-\><c-n>:FloatermNext<CR>
augroup END

" macos specific starts
nmap <silent> ≠ :FloatermNew<cr>
tnoremap <silent> ≠ <c-\><c-n>:FloatermNew<cr>

nmap <silent> † :FloatermToggle<CR>
tnoremap <silent> † <c-\><c-n>:FloatermToggle<cr>

augroup vime_floaterm_group
    autocmd!
    au FileType floaterm tnoremap <buffer> <silent> ˙ <c-\><c-n>:FloatermPrev<CR>
    au FileType floaterm tnoremap <buffer> <silent> ¬ <c-\><c-n>:FloatermNext<CR>
augroup END



" macos specific ends




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
" nnoremap <leader>tc :NERDTreeCWD<CR>

""-----------------------------------------------------------------------------
" programming starts
""-----------------------------------------------------------------------------

" lspsaga
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>

" nvim-compe
inoremap <silent><expr> <CR> compe#confirm('<CR>')
inoremap <silent><expr> <C-Space> compe#complete()


" vim-iced (clojure)

nnoremap <leader>re   :IcedEvalOuterTopList<CR>
nmap <leader>e <Plug>(iced_eval_and_print)af
nmap <leader>he <Plug>(iced_eval_and_print)af
nmap <Leader>hf <Plug>(iced_eval_outer_top_list)

nmap <Nop>(iced_command_palette) <Plug>(iced_command_palette)
nmap <Leader>hc <Plug>(iced_command_palette)
nmap <Leader>hd <Plug>(iced_clojuredocs_open)
nmap <Leader>hb :IcedStdoutBufferOpen<CR>



""-----------------------------------------------------------------------------
" programming ends
""-----------------------------------------------------------------------------
