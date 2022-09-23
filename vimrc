" ~/.vimrc
" LOGO ------------------------------------------------------------------- {{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}

" VERIF PLUG -------------------------------------------------------------- {{{
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'

    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
" }}}

" PLUGINS ----------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'vim-scripts/c.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-scripts/indentpython.vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'chrisbra/vim-zsh'
    Plug 'oranget/vim-csharp'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'sainnhe/sonokai'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'lervag/vimtex'
    Plug 'mattn/emmet-vim'
    Plug 'rust-lang/rust.vim'
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'
    Plug 'nvie/vim-flake8'
    Plug 'https://gitlab.com/code-stats/code-stats-vim.git'
    Plug 'LnL7/vim-nix'
    Plug 'fratajczak/one-monokai-vim'
    Plug 'preservim/nerdcommenter'
call plug#end()

"}}}

" VARIABLES --------------------------------------------------------------- {{{

" Enable filetype detection for plugins and indentation options
filetype plugin indent on

" Reload a file when it is changed from the outside
set autoread

" Display whitespace characters
set list
set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤
set laststatus=2

colorscheme sonokai
" Display line number
set nu
" AutoIndent
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set cc=80
set encoding=utf-8
set cursorline
set wildmode=list:longest
syntax on
set foldmethod=marker
packadd! termdebug
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set mouse=a
set incsearch
set backspace=indent,eol,start
set clipboard=unnamed

"}}}

" INIT MODULES ------------------------------------------------------------ {{{
let g:vimtex_view_method = 'zathura'
let g:rustfmt_autosave = 1
let g:vimtex_compiler_method = 'latexrun'
let g:vim_markdown_folding_disabled = 1
let python_highlight_all=1
let g:codestats_api_key='SFMyNTY.V0dGMmFXVnlNbkE9IyNNVGM1TmpBPQ.ZDnafaSIKZi7uZLf59qQdQg2QqqEYm0TwY0ULKNGpDM'
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
" }}}

" LIGHTLINE --------------------------------------------------------------- {{{
let g:lightline = {
            \ 'colorscheme': 'sonokai',
            \ 'active': {
                \   'left': [ [ 'mode', 'paste' ],
                \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'stats' ] ],
                \   'right': [ [ 'lineinfo' ],
                \              [ 'percent' ],
                \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
                \ },
                \ 'component_function': {
                    \   'gitbranch': 'FugitiveHead',
                    \   'stats': 'CodeStatsXp'
                    \ },
                    \  'component':{
                    \    'charvaluehex': '0x%B'
                    \ },
                    \ }
"}}}

" RAINBOW BRACKETS -------------------------------------------------------- {{{
let g:rainbow_active = 1
let g:rainbow_load_separately = [
            \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
            \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
            \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"}}}

" GIT-NERDTREE ------------------------------------------------------------ {{{
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ 'Modified'  :'✹',
            \ 'Staged'    :'+',
            \ 'Untracked' :'±',
            \ 'Renamed'   :'➜',
            \ 'Unmerged'  :'═',
            \ 'Deleted'   :'x',
            \ 'Dirty'     :'✗',
            \ 'Ignored'   :'≠',
            \ 'Clean'     :'✔︎',
            \ 'Unknown'   :'?',
            \ }


let g:NERDTreeGitStatusShowIgnored = 1

" Git Gutter
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" }}}

" NERDCOMMENTER ----------------------------------------------------------- {{{
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 0

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" }}}

" MAPPING ----------------------------------------------------------------- {{{
inoremap <C-z> <esc>:u<cr>
nnoremap <C-z> :u<cr>
inoremap <C-w> <esc>:w<cr>
nnoremap <C-w> :w<cr>
inoremap <C-q> <esc>:q!<cr>
nnoremap <C-q> :q!<cr>
nnoremap <C-1> :NERDTreeToggle<CR>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
silent! unmap <C-k>
map <silent> <C-k> :call ClangFormat()<CR>
map <C-o> :NERDTreeToggle<CR>
map <C-/> <plug>NERDCommenterToggle
" }}}

highlight ExtraWhitespace ctermbg=red guibg=red
2match ExtraWhitespace /\s\+$/
let g:sonokai_style = 'atlantis'

function! ClangFormat()
    if &filetype == 'c' || &filetype == 'cpp'
        " :%!/nix/store/36yd7zncqq1jnpskvpq6lmn1qmwgzgp5-clang-tools-11.1.0/bin/clang-format
        :!make
    else
        echo "You're not in a c file!"
    endif
endfunction

let git_settings = system("git config --get vim.settings")
if strlen(git_settings)
    exe "set" git_settings
endif