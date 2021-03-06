lua <<EOF
require'bufferline'.setup{
  options = {
    view = "multiwindow" ,
    numbers = "ordinal",
    mappings = true ,
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    --diagnostics = "nvim_lsp"
    --diagnostics_indicator = function(count, level, diagnostics_dict)
    --  return "("..count..")"
    --end
    -- NOTE: this will be called a lot so don't do any heavy processing here
    show_buffer_close_icons = true ,
    show_close_icon = true ,
    show_tab_indicators = true ,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "slant" ,
    enforce_regular_tabs = true,
    always_show_bufferline = true ,
    --sort_by = 'extension' | 'relative_directory' | 'directory' | function(buffer_a, buffer_b)
      -- add custom logic
      --return buffer_a.modified > buffer_b.modified
    --end
  }
}
EOF
