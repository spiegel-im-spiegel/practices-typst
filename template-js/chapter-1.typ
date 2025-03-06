#import "settings.typ": * //各種ローカル設定

= 利用しているテンプレート・パッケージ

このドキュメントでは三重大学名誉教授である#link("https://okumuralab.org/~okumura/")[奥村晴彦]さんによる日本語組版のための#typst 用テンプレート#typstjs を利用している。
#typstjs は#typstuniverse に収録されているため，以下のコマンドで雛形を導入できる。

```
$ typst init @preview/js project_name
downloading @preview/js:0.1.0
  5.2 KiB /   5.2 KiB (100 %)   5.2 KiB/s in 206.47 µs ETA: 0 s

Successfully created new project from @preview/js:0.1.0 🎉
To start writing, run:
> cd project_name
> typst watch example.typ
```

今のところ#typstjs は頻繁に修正・変更が行われているようで#typstuniverse 側の更新が間に合わない場合もある。
できるだけ最新のパッケージを使いたいのであれば，GitHubリポジトリから最新の`js.typ`ファイルを取得して以下のようにローカルファイルを直接指定する。

```typst
// #import "@preview/js:0.1.0": * //Typst Universe から取得する場合
#import "js.typ": * //ローカルに置いてあるものを直接インポートする場合
```

このドキュメントでの設定は以下のとおり。

```typst
#show: js.with(
  lang: "ja",
  seriffont: "STIX Two Text",
  seriffont-cjk: "BIZ UDMincho",
  sansfont: "Liberation Sans",
  sansfont-cjk: "BIZ UDGothic",
  paper: "a4",
  fontsize: 10pt,
  baselineskip: auto,
  textwidth: auto,
  lines-per-page: auto,
  book: false,
  cols: 1,
  non-cjk: "latin-in-cjk",
  cjkheight: 0.88,
)
```

次節で使用しているフォントについて説明する。
