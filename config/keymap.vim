"-----------------------------------------------------------------------------
" fzf 
" fzf preview
"-----------------------------------------------------------------------------
nnoremap <C-f> :FWW<CR>
nnoremap <leader>ff :FWW<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fh :History<CR>

" 模糊搜索当前buffer
nnoremap ? :FzfBLines<CR>
vnoremap ? :FzfBLinesVisual<CR>

" 使用ctrl jk上下移动选项
augroup vime_fzf_group
    autocmd!
    au FileType fzf tnoremap <buffer> <C-j> <Down>
    au FileType fzf tnoremap <buffer> <C-k> <Up>
    au FileType fzf tnoremap <buffer> <Esc> <c-g>
augroup END

if common#functions#HasPlug('vista.vim')
    let g:vista_fzf_preview = ['up:50%:wrap']
    noremap <M-t> :Vista finder<CR>
else
    nnoremap <M-t> :BTags<CR>
endif
" nnoremap <M-T> :Tags<CR>
" nnoremap <M-s> :GrepWithWiki<CR>
" vnoremap <M-s> :GrepWithWikiVisual<CR>
" TODO 增加changes 需要自定义
" nnoremap <M-c> :Commands<CR>
" 如果coc-fzf支持marks的话就用coc-fzf+coc-bookmarks
nnoremap <M-m> :FzfMarks<CR>
" nnoremap <M-m> :Marks<CR>
nnoremap <M-M> :Maps<CR>
nnoremap <M-w> :Windows<CR>
if common#functions#HasPlug('coc-fzf')
    nnoremap <M-y> :<c-u>CocFzfList yank<CR>
endif
" TODO 编写高亮
nnoremap <M-J> :FzfJumps<CR>

" TODO 编写高亮
" quickfix与locationlist
nnoremap <F8> :FzfQuickfix<CR>
nnoremap <F9> :FzfLocationList<CR>

if common#functions#HasPlug('vista.vim')
    nnoremap <M-t> :<c-u>FzfPreviewVistaBufferCtags<CR>
    nnoremap <M-T> :<c-u>FzfPreviewVistaCtags<CR>
else
    nnoremap <M-t> :<c-u>FzfPreviewBufferTags<CR>
    nnoremap <M-T> :<c-u>FzfPreviewCtags<CR>
endif
" 使用rg搜索工作目录或者笔记目录
nnoremap <M-s> :GrepWithWiki<CR>
" 模糊搜索所有buffer
nnoremap ? :<c-u>FzfPreviewLines<CR>
if executable('bat')
    nnoremap <silent> * :<C-u>FzfPreviewLines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
endif
nnoremap <M-r> :<c-u>FzfPreviewMruFiles<CR>
nnoremap <M-c> :<c-u>FzfPreviewCommandPalette<CR>
nnoremap <M-C> :<c-u>FzfPreviewChanges<CR>
if common#functions#HasPlug('vim-bookmarks')
    nnoremap <M-m> :<c-u>FzfPreviewBookmarks<CR>
else
    nnoremap <M-m> :<c-u>FzfPreviewMarks<CR>
endif
if common#functions#HasPlug('yankround.vim')
    nnoremap <M-y> :<c-u>FzfPreviewYankround<CR>
endif
nnoremap <M-J> :<c-u>FzfPreviewJumps<CR>
" nnoremap <M--> :<c-u>FzfPreviewQuickFix<CR>
" nnoremap <M-_> :<c-u>FzfPreviewLocationList<CR>
nnoremap <F8> :<c-u>FzfPreviewQuickFix<CR>
nnoremap <F9> :<c-u>FzfPreviewLocationList<CR>

" git相关
nnoremap <leader>gf :<c-u>FzfPreviewGitFiles<CR>
nnoremap <leader>gs :<c-u>FzfPreviewGitStatus<CR>
nnoremap <leader>ga :<c-u>FzfPreviewGitActions<CR>
nnoremap <leader>gb :<c-u>FzfPreviewBlamePR<CR>
nnoremap <leader>gl :<c-u>FzfPreviewGitLogs<CR>

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
