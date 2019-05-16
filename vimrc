" set leader key
let mapleader = ","

" enter the current mellenium 
set nocompatible

" enable synatx and plugins 
syntax enable 
filetype plugin on 

" set line numbers to display
set nu

" set showcommand so i can see wtf im doing
set showcmd

" set tab length to be 4 spaces instead of the default 8
set shiftwidth=4
set tabstop=4
set ruler

" when searching ignore case, cuz CoT COT Cot cot is annoying
set ignorecase

" use indentation of the previous line
set autoindent

" FINDING FILES:
" Search down into subfolders 
" Provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

" AUTOCOMPLETE:
" Create the 'tags' file 
command! MakeTags !ctags -R . 
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags 
" - Use ^t to jump back up the tag stack

" MAPPINGS:

" map insert ,{ to insert curly braces with a line below 
inoremap <leader>{ {<CR>}<ESC>O<Tab>

" quick pairs
inoremap <leader>( ()<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>' ''<ESC>i
inoremap <leader>[ []<ESC>i

" set ,gw to save right out of insert mode 
nnoremap <leader>w <ESC>:w<CR>
nnoremap <leader>gw <ESC>:wq<CR>
" set ,gg to quit from normal mode

nnoremap <leader>gg <ESC>:q<CR>
"auto center certain motions
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap { {zz
nnoremap } }zz

" set relative number to leader r based on command mapping 
nnoremap <leader>r <ESC>:set relativenumber!<CR>

" B and E to beginning and end of line 
nnoremap B ^
nnoremap E $
onoremap B ^
onoremap E $

" select the last inserted text 
nnoremap gV `[v`]

" g ctrl o so that it doesnt collide with 'go' in normal mode 
nnoremap g<C-O> o<ESC>C<ESC>k
nnoremap gO O<ESC>C<ESC>j

" map 'jk' to the esacpe key in insert mode
inoremap jk <ESC> 

" maps often used commands but too lazy to 
" MACROS: 
" add and remove c++ comment to line
let @c = '0I//jkj'
let @b = '0Bxxj' 
" add AP to the beginning of a comment 
let @a = '0f"iAP jk'

" SETUP TAGS:
set tags+=~/${PROJ}_tags

" FOLDING:
set foldenable 

" show all folds 
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10 

" space remapped to open folds 
nnoremap <space> za 

" fold based on indent level 
set foldmethod=indent
