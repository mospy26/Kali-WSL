"==============================================================="
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim "create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()

"==============================================================="
"===================Personal config============================="
"==============================================================="
"Remap leader key to space
let mapleader = " "

"Set shift width as 4
set shiftwidth=4

"Disable arrowkeys
"nmap <LEFT> <NOP>
"nmap <RIGHT> <NOP>
"nmap <UP> <NOP>
"nmap <DOWN> <NOP>
"imap <LEFT> <NOP>
"imap <RIGHT> <NOP>
"imap <UP> <NOP>
"imap <DOWN> <NOP>

" Map Y to yank into clipboard in visual mode
xnoremap Y "+y

"Map Ctrl+L to clear highlighting
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"Relative line numbers
set number relativenumber

"Enable mouse support in all modes ("a")
set mouse=a

"Load vim rc using \rc shortcut
nnoremap <LEADER>rc :so $MYVIMRC<CR>

"Treat .props file as xml files for syntax
au BufRead,BufNewFile *.props set filetype=xml

" Jump to matching pairs easily, with Tab
nnoremap <Tab> %
vnoremap <Tab> %

"Remap :W to :w and :Q to :q
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))

"==============================================================="
"======================Telescope Config========================="
"==============================================================="
"Telescope setup script
lua <<EOF
    local telescope = require('telescope')
    telescope.setup {}
EOF

"keybindings for telescope operations 
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
