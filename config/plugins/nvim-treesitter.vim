lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "vim","java","rust","typescript" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  auto_install = true,
  highlight = {
    enable = true,
  },
}
EOF
