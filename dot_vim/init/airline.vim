" let g:airline_theme='solarized'

" Tabline
set showtabline=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

augroup HITABFILL
  autocmd!
  autocmd User AirlineAfterInit hi airline_tabfill ctermbg=NONE
augroup END

hi statusline guibg=NONE gui=NONE

" Buffers
let g:airline_inactive_collapse=1

" Sections
let g:airline_section_z=airline#section#create(['Ln %l/%L, Col %c'])
