let g:dashboard_default_executive ='fzf'
let g:indentLine_fileTypeExclude = ['dashboard']


lua <<EOF
local home = os.getenv('HOME')
vim.g.dashboard_custom_section = {
    last_session = {
        description = {'  Recently laset session                  SPC s l'},
        command =  'SessionLoad'},
    find_history = {
        description = {'  Recently opened files                   SPC f h'},
        command =  'DashboardFindHistory'},
    find_file  = {
        description = {'  Find  File                              SPC f f'},
        command = 'Telescope find_files find_command=rg,--hidden,--files'},
    new_file = {
        description = {'  File Browser                            SPC f b'},
        command =  'Telescope file_browser'},
    find_word = {
        description = {'  Find  word                              SPC f w'},
        command = 'DashboardFindWord'},
    find_dotfiles = {
        description = {'  Open Personal dotfiles                  SPC f d'},
        command = 'Telescope dotfiles path=' .. home ..'/Ivy/dotfiles'},
    go_source = {
        description = {'  Find Go Source Code                     SPC f s'},
        command = 'Telescope gosource'},
}

EOF
