lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "clojure", "go", "java", "json", "kotlin", "python", "rust", "tsx" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,
  },
}
EOF
