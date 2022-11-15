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

"Git Blame
Plug 'APZelos/blamer.nvim'

"Git signs
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

"==============================================================="
"Remap leader key to space
let mapleader = " "

"Set shift width as 4
set shiftwidth=4

"Disable arrowkeys
nmap <LEFT> <NOP>
nmap <RIGHT> <NOP>
nmap <UP> <NOP>
nmap <DOWN> <NOP>
imap <LEFT> <NOP>
imap <RIGHT> <NOP>
imap <UP> <NOP>
imap <DOWN> <NOP>

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

"===============================================================" 
"======================Git Signs Config========================="
"==============================================================="
"Git signs setup script
lua <<EOF
    local gitsigns = require('gitsigns')
    gitsigns.setup {
      signs = {
	add          = { hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
	change       = { hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
	delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
	topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
	changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
	untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
      },
      signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
      numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
      linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
      word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
      watch_gitdir = {
	interval = 1000,
	follow_files = true
      },
      attach_to_untracked = true,
      current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
	virt_text = true,
	virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
	delay = 1000,
	ignore_whitespace = false,
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default
      max_file_length = 40000, -- Disable if file is longer than this (in lines)
      preview_config = {
	-- Options passed to nvim_open_win
	border = 'single',
	style = 'minimal',
	relative = 'cursor',
	row = 0,
	col = 1
      },
      yadm = {
	enable = false
      },
    }
EOF

"==============================================================="
"======================Git Blame Config========================="
"==============================================================="
let g:blamer_enabled = 0 "Use :BlamerToggle to enable
let g:blamer_delay = 200
highlight Blamer guifg=lightgrey
