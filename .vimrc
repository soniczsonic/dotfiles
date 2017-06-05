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
"emmet(zen-coding)を使う.
call dein#add('mattn/emmet-vim')
"vimからファイルを開く
call dein#add('scrooloose/nerdtree')
"def,ifの後に自動でendを入れてくれる.
call dein#add('tpope/vim-endwise')
"vimでfishシェルを使えるようにする.
"call dein#add('dag/vim-fish')
"インデントの深さを視覚的にわかりやすくする.
call dein#add('Yggdroot/indentLine')
"自動補完プラグイン
call dein#add('Shougo/neocomplete.vim')
"スニペット機能を提供します。
call dein#add('Shougo/neosnippet.vim')
"neosnippet.vimのためのスニペット集です.
call dein#add('Shougo/neosnippet-snippets')
"ファイルに変更が加わった際に、NERDtreeのツリーに変更を示すアイコンを表示します。
call dein#add('Xuyuanp/nerdtree-git-plugin')
"AtomのOne Darkを再現するためのカラースキーマです。
call dein#add('joshdick/onedark.vim')
":Mkdir,:Touchなどのこまんどがvimで使えるようになる。
call dein#add('b4b4r07/vim-shellutils')

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

""""Ctrl+eによりNERDTreeを開くことが可能。
nnoremap <silent><C-e> :NERDTreeToggle<CR>
""""タブ幅を２にする。
set tabstop=2
set shiftwidth=2
""""jjでescモードにはいる.
inoremap <silent> jj <ESC>
""""fishシェル使用したらバグがいろいろ発生したので下の文を書いてログインシェルをバッシュにしてバグを回避してみる
set shell=/bin/bash
""""行番号を追加する
set number
""""joshdick/onedark.vimのための設定の行
if (has("autocmd") && !has("gui_running"))
	  let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
		  autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " No `bg` setting
		end
let g:onedark_termcolors=16
colorscheme onedark
""""vimを開いた時何もファイルを開いてなければ自動的にNERDTreeが開く
autocmd vimenter * NERDTree
"neocompleteのための行。ジドウホカンヲジッソウスル
let g:neocomplete#enable_at_startup = 1
