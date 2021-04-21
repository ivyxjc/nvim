"-----------------------------------------------------------------------------
" 全局配置
"-----------------------------------------------------------------------------
" if exists('g:loaded_config_fzf_vim_vim')
"     finish
" endif
" let g:loaded_config_fzf_vim_vim = 1

" fzf文件夹
let g:fzf_dir = g:cache_root_path . '/fzf'
" fzf history 文件
let g:fzf_history_dir = g:fzf_dir . "/fzf-history"

let $FZF_DEFAULT_COMMAND = "rg --files --hidden --no-require-git -g '!.git/'"

" 如果存在buffer，那么跳转过去
let g:fzf_buffers_jump = 1

"-----------------------------------------------------------------------------
" 主题配置
"-----------------------------------------------------------------------------
" 配色与主题同色
" fg表示未选中行的前景色
" hl表示搜索到的文字的颜色
" fg+表示选中的行的前景色
" hl+表示选中的行的搜索文字颜色
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Directory'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'WarningMsg'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '