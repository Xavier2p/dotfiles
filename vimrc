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
    Plug 'preservim/nerdtree'
    Plug 'vim-scripts/indentpython.vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'chrisbra/vim-zsh'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'lervag/vimtex'
    Plug 'mattn/emmet-vim'
    Plug 'rust-lang/rust.vim'
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'
    Plug 'nvie/vim-flake8'
    Plug 'https://gitlab.com/code-stats/code-stats-vim.git'
    Plug 'LnL7/vim-nix'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'github/copilot.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-scripts/fortran.vim'
    Plug 'sainnhe/sonokai'
    Plug 'sheerun/vim-polyglot'
    Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
    Plug 'haishanh/night-owl.vim'
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

colorscheme night-owl
" AutoIndent
set autoindent
set smartindent

set number

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


" Automated line number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
" }}}

" LIGHTLINE --------------------------------------------------------------- {{{
let g:lightline = {
            \ 'colorscheme': 'nightowl',
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
            \ 'Modified'  :'±',
            \ 'Staged'    :'+',
            \ 'Untracked' :'!',
            \ 'Renamed'   :'',
            \ 'Unmerged'  :'═',
            \ 'Deleted'   :'',
            \ 'Dirty'     :'✗',
            \ 'Ignored'   :'✗',
            \ 'Clean'     :'✔︎',
            \ 'Unknown'   :'?',
            \ }


let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'

" Git Gutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = 'ø'
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
" inoremap <C-w> <esc> gg=G :w<cr>
" nnoremap <C-w> :w<cr>
" inoremap <C-q> <esc>:q!<cr>
" nnoremap <C-q> :q!<cr>
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

" COCNVIM ----------------------------------------------------------------- {{{
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" }}}
