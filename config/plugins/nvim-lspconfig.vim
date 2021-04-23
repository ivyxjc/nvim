lua <<EOF
local enhance_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
        format.lsp_before_save()
    end
    local opts = {
        noremap = true,
        silent = false
    }
    api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    api.nvim_buf_set_keymap(0, 'n', '<m-d>', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'i', '<m-d>', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'n', '<m-b>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'n', '<m-h>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'n', '<m-i>', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'n', '<c-p>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'i', '<c-p>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    api.nvim_buf_set_keymap(0, 'i', '<m-u>', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
end

local lspconfig = require 'lspconfig'

lspconfig.gopls.setup {
    cmd = {"gopls", "--remote=auto"},
    on_attach = enhance_attach,
    capabilities = capabilities,
    init_options = {
        usePlaceholders = true,
        completeUnimported = true
    }
}

lspconfig.clojure_lsp.setup {
    cmd = {"clojure-lsp"},
    on_attach = enhance_attach,
    filetypes = {"clojure", "edn", "clj", "cljs", "cljc"},
    root_dir = lspconfig.util.root_pattern("project.clj", "deps.edn")
}
EOF
