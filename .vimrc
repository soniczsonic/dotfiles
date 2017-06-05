let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')

"githubのリポジトリ名を打ち込む
"call dein#add('thica/vim-quickrun')
call dein#add('mattn/emmet-vim')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-endwise')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on



"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kabaya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kabaya/.cache/dein')
    call dein#begin('/home/kabaya/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/kabaya/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    " You can specify revision/branch/tag.
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------


"以下はカバヤが個人的に付け足した設定。vimの調子がおかしくなったら削除すること。

""""自動的に閉じカッコを入力
imap[ []<LEFT>
imap{ {}<LEFT>
imap( ()<LEFT>
imap< <><LEFT>

""""Ctrl+eによりNERDTreeを開くことがかのう。
nnoremap <silent><C-e> :NERDTreeToggle<CR>
""""タブ幅を４にする。
set tabstop=4
set shiftwidth=4
