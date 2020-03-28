# geek-space-hq.github.io

## 前提条件

Git, Dockerが使える環境

## 初期設定

1. このリポジトリをForkしてローカルにClone
<!-- 2. Hugoをインストールしてくる(pacmanなら`$ sudo pacman -S hugo`) -->
2. themeを`git submodule`でインストール(`$ git submodule update --init --recursive`)

## 記事作成方法

1. プロジェクトのRootで`$ docker run --rm -v $(pwd):/app peacock0803sz/geek-space-blog:0.9.0 hugo new ${type}/${title}.md`

注: `type = [article, audio, code, gallary, link, page, quote, video]`

articleが一番スタンダードっぽい?
`${title}` は全てアルファベットでkebab-caseとする

2. 生成されたMarkdownファイルにお好みのエディタで記事を書く
    - 注: metaゾーンの **draft:true** のままだと外部公開されない(PR出すときにはfalseにすること)
3. Gitでaddしてcommit, push
4. Fork元リポジトリの**sourceブランチ**にPRを送る
