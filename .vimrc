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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set smartindent
set autoindent

:helptags ~/.vim/bundle/vim_cf3/doc/
"enable vim_cf3 plugin abbreviations
let g:EnableCFE3KeywordAbbreviations=1

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


