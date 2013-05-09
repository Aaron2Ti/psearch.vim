" ============================================================================
" File: plugin/psearch.vim
" Description: Multibuffer search 
" Mantainer: Giacomo Comitti (https://github.com/gcmt)
" Url: https://github.com/gcmt/psearch.vim
" License: MIT
" Version: 0.3.2
" Last Changed: 14 Feb 2013
" ============================================================================
"

" Init {{{

if exists('g:pse_disable') || exists("g:pse_loaded") || !has('python') || v:version < 702 || &cp 
    finish
endif

let g:pse_loaded = 1

" }}}


" Settings
let g:pse_prompt = get(g:, 'pse_prompt', '>> ')
let g:pse_max_height = get(g:, 'pse_max_height', 15)


" Commands
command! PSearch call psearch#Open('')
command! PSearchw call psearch#Open(expand('<cword>'))
