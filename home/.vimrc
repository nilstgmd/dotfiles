syntax on
set background=dark
set number
:set listchars=eol:¶,tab:>-,trail:.,extends:>,precedes:<
set list

execute pathogen#infect()

let g:solarized_termcolors=256
colorscheme badwolf

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set laststatus=2
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
