let g:fzf_preview_floating_window_rate = 0.6
let g:fzf_preview_default_fzf_options = { '--reverse': v:true, '--preview-window': 'wrap' }
" jump to the buffers by default, when possible
let g:fzf_preview_buffers_jump = 1
let g:fzf_preview_fzf_preview_window_option = 'up:50%'
" let g:fzf_preview_command = g:scripts_root_path . '/preview.sh'
let g:fzf_preview_use_dev_icons = 1
let g:fzf_preview_dev_icon_prefix_string_length = 3
let g:fzf_preview_grep_cmd = 'rg --column --line-number --no-heading --color=always --smart-case'
let g:fzf_preview_cache_directory = g:cache_root_path . 'fzf_preview'
" let g:fzf_preview_preview_key_bindings = 'ctrl-f:preview-page-down,ctrl-b:preview-page-up,?:toggle-preview,ctrl-d:'


function! s:RipgrepFzfWithWiki(query, fullscreen)
    " 这个是在安装了vimwiki插件后使用的功能，需要配置一下g:vimwiki_path路径
    if common#functions#HasPlug('vimwiki') && &ft ==? 'vimwiki' && match(expand('%:p'), expand(g:vimwiki_path)) > -1
        let wiki_path = g:vimwiki_path
    else
        let wiki_path = ""
    endif
    execute 'FzfPreviewProjectGrep .' . ' ' . wiki_path
endfunction
command! -nargs=* -bang GrepWithWiki call s:RipgrepFzfWithWiki(<q-args>, <bang>0)

function! s:FilesWithWiki(query, fullscreen)
    let l:q=a:query
    if empty(l:q) && common#functions#HasPlug('vimwiki') && &ft ==? 'vimwiki' && match(expand('%:p'), expand(g:vimwiki_path)) > -1
        let l:q=g:vimwiki_path
    endif
    exec 'FzfPreviewDirectoryFiles' . ' ' . l:q
endfunction
command! -bang -nargs=? -complete=dir FWW call s:FilesWithWiki(<q-args>, <bang>0)

