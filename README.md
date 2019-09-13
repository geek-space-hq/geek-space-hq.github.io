# geek-space-hq.github.io

## 初期設定

1. このリポジトリをForkしてローカルにClone
2. Hugoをインストールしてくる(pacmanなら`$ sudo pacman -S hugo`)
3. themeを`git submodule`でインストール(`$ git submodule update --init --recursive`)

## 記事作成方法

1. プロジェクトのRootで`$ hugo new ${type}/${title}.md`

注: `type = [article, audio, code, gallary, link, page, quote, video]`

articleが一番スタンダードっぽい?

2. 生成されたMarkdownファイルにお好みのエディタで記事を書く
3. `$ hugo`でhtmlとかその他諸々を生成する
4. Gitでaddしてcommit, push
5. Fork元リポジトリの**sourceブランチ**にPRを送る
