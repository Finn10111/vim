""" configuration

filetype plugin on

" map leader key to ,
let mapleader=","

" activate statusline
set laststatus=2

" configure statusline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" set color scheme
colorscheme happy_hacking

""" mappings

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Show linenumbers
set number

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Enable highlighting of the current line
set cursorline

syntax on

" include custom vimrc
" Function to source only if file exists {
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
" }

call SourceIfExists("~/.vimrc.local")
