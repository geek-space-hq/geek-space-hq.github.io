# geek-space-hq.github.io

## 前提条件

Git, (Docker or Hugo)が使える環境

## 初期設定

1. このリポジトリをForkしてローカルにClone
2. themeを`git submodule`でインストール(`$ git submodule update --init --recursive`)

## 記事作成方法

1. プロジェクトのRootで
   - Dockerを使う場合 
    1. `$ docker build -t geek-space-blog .`
    2. `$ docker run --rm -v $(pwd):/app geek-space-blog hugo new ${type}/${title}.md`
   - ローカルのHugoを使う場合: `$ hugo new ${type}/${title}.md`

注: `type = [article, audio, code, gallary, link, page, quote, video]`

articleが一番スタンダードっぽい?
`${title}` は全てアルファベットでkebab-caseとする

2. 生成されたMarkdownファイルにお好みのエディタで記事を書く
    - 注: metaゾーンの **draft:true** のままだと外部公開されない(PR出すときにはfalseにすること)
3. Gitでaddしてcommit, push
4. Fork元リポジトリの**sourceブランチ**にPRを送る
