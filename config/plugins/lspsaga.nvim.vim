"lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"or use command LspSagaFinder
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

lua <<EOF
local saga = require 'lspsaga'

--saga.init_lsp_saga {
--  your custom option here
--}

--use default config

saga.init_lsp_saga{
    code_action_prompt={
        enable = true,
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    }
}


EOF
