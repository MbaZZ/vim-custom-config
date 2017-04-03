execute pathogen#infect()
set number
set smartindent
set autoindent
set ruler
syntax on
colorscheme Tomorrow-Night
set nocompatible
inoremap ( ()<left>
let g:javascript_plugin_jsdoc = 1
map <F2> :NERDTreeToggle<CR>
:hi Directory guifg=#FF0000 ctermfg=red
let g:NERDTreeFileExtensionHighlightFullName = 1

" please install ConqueShell (https://github.com/lrvick/Conque-Shell)
function! DebugJs()
  let cmd="node --debug-brk "
  if( expand('%:e') == "coffee")
    let cmd="coffee --nodejs --debug-brk "
  endif
  exec "silent ConqueTermVSplit bash -ic \"(" . cmd . @% . " &) ; sleep 1s && node-vim-inspector\""
endfunction

" launch debug on ctrl-d
nnoremap <C-d> :call DebugJs()<CR>   
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


" Highlight the current line
set cursorline

set background=dark
