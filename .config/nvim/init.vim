let mapleader = "\<Space>"
let g:ycm_autoclose_preview_window_after_completion = 1

set number

map <leader>n :lua require("harpoon.ui").toggle_quick_menu()<CR>
map <leader>h :lua require("harpoon.ui").nav_file(1)<CR>
map <leader>j :lua require("harpoon.ui").nav_file(2)<CR>
map <leader>k :lua require("harpoon.ui").nav_file(3)<CR>
map <leader>l :lua require("harpoon.ui").nav_file(4)<CR>

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'numirias/semshi'
Plug 'ycm-core/YouCompleteMe'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'

call plug#end()

:command Fjson %!python -m json.tool
:command H :lua require("harpoon.mark").add_file()
:command Clip :%y+
