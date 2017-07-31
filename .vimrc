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
"vim上でrailsのコマンドを打てるようにする。必須。
call dein#add('tpope/vim-rails')

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
"call dein#add('Xuyuanp/nerdtree-git-plugin')
"rails配信用のカラースキーム
call dein#add('jgdavey/vim-railscasts')
":Mkdir,:Touchなどのこまんどがvimで使えるようになる。
call dein#add('b4b4r07/vim-shellutils')
"範囲拡大を行い、vの連打ですばやく範囲を指定できる
call dein#add('terryma/vim-expand-region')

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


"以下はカバヤが個人的に付け足した設定。vimの調子がおかしくなったら削除すること。atarasiimonoha,sitanituika suru.


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
""""hhでescモードにはいる.
inoremap <silent> hh <ESC>
""""fishシェル使用したらバグがいろいろ発生したので下の文を書いてログインシェルをバッシュにしてバグを回避してみる
set shell=/bin/bash
""""行番号を追加する
set number
""""vimを開いた時何もファイルを開いてなければ自動的にNERDTreeが開く
autocmd vimenter * NERDTree
"neocompleteのための行。ジドウホカンヲジッソウスル
let g:neocomplete#enable_at_startup = 1
"LeaderをSpaceキーにする.
let mapleader = "\<Space>"
"<Space>wを押してファイルを保存する.
nnoremap <Leader>w :w<CR>
"<Space>wqを押して保存して終了する.
nnoremap <Leader>wq :wq<CR>
"<Space>qを押して保存して終了する.
nnoremap <Leader>q :q<CR>
"<Space>q!を押して保存して終了する.
nnoremap <Leader>q! :q!<CR>
"<Space><Space>でビジュアルラインモードに切り替える
nmap <Leader><Leader> V

"vを押して、1文字を選択する
"もう1回vを押して、選択範囲を単語に拡大する
"さらに1回vを押して、選択範囲を段落に拡大する
vmap <C-v> <Plug>(expand_region_shrink)
"範囲を拡大しすぎた場合は、<C-v>を押して前回の選択範囲に戻す
vmap <C-v> <Plug>(expand_region_shrink)

"Dvork from  to htns
nnoremap h j
nnoremap t k
nnoremap n l
nnoremap s h
