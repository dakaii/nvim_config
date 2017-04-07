call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'tomasr/molokai'
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

set ruler
set number
set expandtab
set mouse=r
syntax on

colorscheme molokai
let g:molokai_original = 1
highlight Normal ctermfg=white ctermbg=black
highlight LineNr ctermfg=yellow ctermbg=black

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_play_open_browser = 0

function! ClipboardYank()
  call system('pbcopy', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('pbpaste')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>

