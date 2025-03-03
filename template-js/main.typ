// #import "@preview/js:0.1.0": * //Typst Universe から取得する場合
#import "js.typ": *

// `js` パッケージ用パラメータ設定
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

//コードブロックのフォント定義
#show raw: body => {
    set text(
      font: (
        (
          name: "Inconsolata",
          covers: "latin-in-cjk",
        ),
        "BIZ UDGothic",
        "Noto Color Emoji",
      ),
      size: 10pt,
    )
  body
}

//数式モードのフォント指定
#show math.equation: set text(
  font: ("STIX Two Math", "BIZ UDMincho")
)

//ハイパーリンクの定義
#let typst = link("https://typst.app/")[Typst]
#let typstjs = link("https://github.com/okumuralab/typst-js")[okumuralab/typst-js]
#let typstuniverse = link("https://typst.app/universe/")[Typst Universe]
#let stix2 = link("https://github.com/stipub/stixfonts")[STIX Two]
#let bizudmincho = link("https://github.com/googlefonts/morisawa-biz-ud-mincho")[Morisawa BIZ UDMincho]
#let bizudgothic = link("https://github.com/googlefonts/morisawa-biz-ud-gothic")[Morisawa BIZ UDGothic]
#let notocoloremoji = link("https://github.com/googlefonts/noto-emoji")[Noto Color Emoji]

//ドキュメント情報およびタイトルの出力
#maketitle(
  title: "okumuralab/typst-js をお試し中",
  authors: "Spiegel",
  keywords: ("typst", "typesetting"),
)

#outline() //目次

#pagebreak() //改ページ

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
  seriffont: "New Computer Modern",
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

// #pagebreak()

= ドキュメントで使用しているフォント

== 本文で使用しているフォント

#typstjs では本文に欧文フォントと和文フォントの2種類を指定する。

このドキュメントでは欧文フォントに#stix2 およびLiberation Sansを指定している。
STIXは科学技術出版に必要な全てのUnicodeフォントをオープンなライセンスで提供しようというプロジェクトで，#stix2 はそのバージョン2にあたる。
#stix2 はSIL OFL 1.1ライセンスで提供されているが，標準では入っているプラットフォームはないため別途インストールが必要である。
ゴシック体のLiberation SansはHelvetica互換デザインのフォントでLinuxプラットフォームで広く使われている。
なお，WindowsではHelvetica互換デザインのフォントとしてArialが使われている。

和文フォントには#bizudmincho および#bizudgothic を指定している。
BIZ UDフォントシリーズは見やすく読み間違えにくいデザインが特徴でSIL OFL 1.1ライセンスで提供されている。
また，最近のWindowsやmacOSには標準で搭載されている。
なおLinuxプラットフォームでは（ディストリビューションによるが）別途インストールが必要である。

== コードの記述で使用しているフォント

#typstjs では設定されないが，コードの記述に関して以下のようにフォントを指定している。

```typst
#show raw: body => {
    set text(
      font: (
        (
          name: "Inconsolata",
          covers: "latin-in-cjk",
        ),
        "BIZ UDGothic",
        "Noto Color Emoji",
      ),
      size: 10pt,
    )
  body
}
```

#notocoloremoji は絵文字用のNOTOフォントで，Linuxのディストリビューションには標準で搭載されていることが多いが，他のプラットフォームでは別途インストールする必要があるかもしれない。

== 数式モードで使用しているフォント

#typstjs では設定されないが，数式モードにおけるフォント指定は以下の通りである。

```typst
#show math.equation: set text(
  font: ("STIX Two Math", "BIZ UDMincho")
)
```

欧文フォントとしては#stix2 の数式用フォントを指定している。
和文フォントには#bizudmincho を指定している。

#pagebreak()

数式の表示例は以下の通り。

#rect(width:100%, radius:3pt)[
$
  (integral_0^infinity (sin x) / sqrt(x) dif x)^2 =
  sum_(k=0)^infinity (2k)! / (2^(2k) (k!)^2) 1 / (2k+1) =
  product_(k=1)^(infinity) (4k^2) / (4k^2-1) =
  pi / 2
$
]
