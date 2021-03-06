syntax enable
filetype off
if has("gui_running") || &term == "xterm-256color" || &term == 'screen'
    let g:fancy_term = 1
else
    let g:fancy_term = 0
endif
Bundle 'vim-addon-mw-utils'
Bundle 'benmills/vimux'
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'xolox/vim-session'
    let g:session_autoload = 'yes'
" original repos on github
"Bundle 'Shougo/neocomplcache-snippets-complete'
"Bundle 'vim-scripts/YankRing.vim'
"Bundle 'zakj/vim-showmarks'
Bundle 'Lokaltog/vim-easymotion'

" Bundle 'Raimondi/delimitMate'
    " nnoremap <Leader>ds :DelimitMateSwitch<CR>
    " let g:delimitMate_expand_cr = 1
Bundle 'Rip-Rip/clang_complete'
Bundle 'airblade/vim-gitgutter'
" Bundle 'mattn/gist-vim'
Bundle 'ap/vim-css-color'
Bundle 'PProvost/vim-markdown-jekyll'
Bundle 'Shougo/unite.vim'
Bundle 'goldfeld/vim-seek'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'pangloss/vim-javascript'
Bundle 'honza/snipmate-snippets'
Bundle 'hsitz/VimOrganizer'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'mileszs/ack.vim'
    nnoremap <Leader>a :Ack<space>
    let g:ackprg = 'ag --nogroup --nocolor --column'
    " let g:ackprg="ack --with-filename --ignore-case --all --nocolor --nogroup --follow --column"
Bundle 'jdonaldson/vaxe'
Bundle 'jdonaldson/vim-powerline'
    if g:fancy_term
        let g:Powerline_symbols = 'fancy'
    endif
"Bundle 'fholgado/minibufexpl.vim'
"map <Leader>b :MiniBufExplorer<cr>
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
Bundle 'kien/ctrlp.vim'
    let g:ctrlp_follow_symlinks = 2
    if len(argv())==0 || argv()[0] == '.'
        " If I open a directory, assume I want to hard set a working path
        let g:ctrlp_working_path_mode = ''
    endif
Bundle 'majutsushi/tagbar'
" Extending tabar to support markdown (additionally to the ~/.ctags-file!)
    let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'kinds' : [
            \ 'h:Heading_L1',
            \ 'i:Heading_L2',
            \ 'k:Heading_L3'
        \ ]
    \ }
Bundle 'michalliu/jsoncodecs.vim'
Bundle 'michalliu/jsruntime.vim'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'mkitt/browser-refresh.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'
    let g:syntastic_javascript_syntax_checker="gjslint"
    let g:syntastic_error_symbol='✗'
    let g:syntastic_warning_symbol='⚠'
    " syntastic gutter
    augroup syn_gutter
        au BufWinEnter * sign define mysign
        au BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')
    augroup END
" Bundle 'sjl/splice.vim'
Bundle 'sjl/vitality.vim'
Bundle 'suan/vim-instant-markdown'
" Bundle 'jdonaldson/molokai'
"     if g:fancy_term
"         let g:molokai_original = 1
"     endif
Bundle 'altercation/vim-colors-solarized'
    " solarized options
    " let g:solarized_termcolors = 16
    let g:solarized_termtrans = 1
    set background=dark
    colorscheme solarized
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'
    map <c-\> \\\
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tyru/open-browser.vim'
" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_semantic_triggers =  {
"     \   'c' : ['->', '.'],
"     \   'objc' : ['->', '.'],
"     \   'cpp,objcpp' : ['->', '.', '::'],
"     \   'perl,php' : ['->'],
"     \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir' : ['.'],
"     \   'lua' : ['.', ':'],
"     \   'erlang' : [':'],
"     \}
Bundle 'Shougo/neocomplcache'
Bundle 'tsaleh/vim-matchit'


" vim-scripts repos
"Bundle 'localvimrc'
Bundle 'Gundo'
    map <Leader>z :GundoToggle<CR>
Bundle 'L9'
Bundle 'The-NERD-tree'
Bundle 'desert.vim'
Bundle 'closetag.vim'
Bundle 'jdonaldson/vim-addon-local-vimrc'

filetype plugin indent on " required!

