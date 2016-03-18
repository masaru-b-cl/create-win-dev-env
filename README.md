Create Windows Development Environment
=====
Windows向けの開発環境を自動で構築するスクリプトです。

## 実行方法

1. ダウンロードしたzipファイルを展開する
2. Powershellを管理者として実行し、上記展開フォルダーで以下のコマンドを実行する

```powershell
PS path\to\create-win-dev-env> (Get-Content -Raw .\install.ps1) | iex
```

## インストールする製品

- [Chocolatey](https://chocolatey.org/)
- [7-Zip](http://sevenzip.sourceforge.jp/)
- [Git for Windows](https://msysgit.github.io/)
	- [git-now](https://gist.github.com/masaru-b-cl/7038197)
	- [git-master](https://gist.github.com/mzp/1131618)
	- [git-feature](https://gist.github.com/masaru-b-cl/5b461ffd4728ab9b61cb)
	- [diff-highlight](https://github.com/git/git/tree/master/contrib/diff-highlight)
	- [git-archive-diff](https://gist.github.com/masaru-b-cl/5ada3ccd4ad4627032ca)
- [Vim（香り屋版）](http://www.kaoriya.net/software/vim/)
	- [NeoBundle](https://github.com/Shougo/neobundle.vim)
	- [Molokai Color Scheme for Vim](https://github.com/tomasr/molokai.git)
	- [neocomplete](https://github.com/Shougo/neocomplete.git)
	- [Neosnippet](https://github.com/Shougo/neosnippet.vim)
	- [Neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
- [WinMerge](http://winmerge.org/?lang=ja)
- [MyricaM](http://myrica.estable.jp/myricamhistry/)
- [My dotfiles](https://github.com/masaru-b-cl/dotfiles/tree/windows)
	- Git for Windows
	- Vim

## 更新履歴
- 2.0 インストールスクリプトをPowerShellに変更
- 1.0 初版
- 1.1 git-archive-diffを追加
