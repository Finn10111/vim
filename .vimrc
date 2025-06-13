""" configuration

filetype plugin on

" map leader key to ,
let mapleader=','

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

" ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['autopep8'],
\   'html': ['html-beautify'],
\   'htmldjango': ['html-beautify', 'prettier'],
\   'css': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'json': ['jq'],
\   'yaml': ['yamlfix'],
\   'c': ['astyle']
\}

let g:ale_linters = {
\   'htmldjango': ['html-beautify', 'prettier'],
\   'json': ['jq'],
\   'c': ['astyle']
\}

" ALE: Auto-setup PATH for virtual environments (so modules can be found)
let b:ale_python_auto_virtualenv = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Show linenumbers
set number

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

autocmd FileType javascript,handlebars,css,vue setl sw=2 sts=2 et

" enable syntax highlighting
syntax on

" enable autoindent for new lines
set autoindent

" Enable highlighting of the current line
set cursorline
highlight CursorLine ctermbg=Black

" enable vim-gitmoji
set completefunc=emoji#complete

" include custom vimrc
" Function to source only if file exists {
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
" }

" remap gutentags jump to deifnition
" TODO: find good key binding, this one is used by ALE
"nnoremap <C+j> :tselect<CR>

" YouCompleteMe GoToDefinition
" https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#goto-commands
nnoremap <C+g> :YcmCompleter GoToDefinition

" enable Rainbow Parentheses Improved
let g:rainbow_active = 1

" ctrlp.vim: exclude some directories
let g:ctrlp_custom_ignore = {
  \ 'dir':  '(\v[\/]\.(git|hg|svn)|((bin/|lib/))',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" toggle buffers
map <leader>n :bnext<cr>
map <leader>p :bprevious<cr>
map <leader>d :bdelete<cr>

call SourceIfExists("~/.vimrc.local")
