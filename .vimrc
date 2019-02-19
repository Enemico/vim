set encoding=utf-8
set fileencoding=utf-8
"set number
execute pathogen#infect()
syntax on
filetype plugin indent on
set nofoldenable
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ansible_attribute_highlight = "ab"
let g:ansible_name_highlight = 'b'

set smartindent
set autoindent

fun! Getchar()
        let c = getchar()
        if c != 0
                let c = nr2char(c)
        endif
        return c
endfun

fun! Eatchar(pat)
        let c = Getchar()
        return (c =~ a:pat) ? '' : c 
endfun
