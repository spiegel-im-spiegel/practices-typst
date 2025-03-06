#import "@preview/js:0.1.1": * //Typst Universe から取得する場合
// #import "js.typ": * //ローカルに置いたものを直接インポートする場合

#import "settings.typ": * //各種ローカル設定

#show: body => {
  js(
    lang: "ja",
    seriffont: seriffont-name,
    seriffont-cjk: seriffont-cjk-name,
    sansfont: sansfont-name,
    sansfont-cjk: sansfont-cjk-name,
    paper: "a4",
    fontsize: fontsize-value,
    baselineskip: auto,
    textwidth: auto,
    lines-per-page: auto,
    book: false,
    cols: 1,
    non-cjk: "latin-in-cjk",
    cjkheight: 0.88,
  )[#body]
}
// `js` パッケージ用パラメータ設定
// #show: js.with(
//   lang: "ja",
//   seriffont: seriffont-name,
//   seriffont-cjk: seriffont-cjk-name,
//   sansfont: sansfont-name,
//   sansfont-cjk: sansfont-cjk-name,
//   paper: "a4",
//   fontsize: fontsize-value,
//   baselineskip: auto,
//   textwidth: auto,
//   lines-per-page: auto,
//   book: false,
//   cols: 1,
//   non-cjk: "latin-in-cjk",
//   cjkheight: 0.88,
// )

//メイン以外のフォントの初期化
#show: body => {
  initializeFonts[#body]
}
// #show: initializeFonts

//ドキュメント情報およびタイトルの出力
#maketitle(
  title: "okumuralab/typst-js をお試し中",
  authors: "Spiegel",
  keywords: ("typst", "typesetting"),
)

#outline() //目次

#pagebreak() //改ページ

#include "chapter-1.typ" //第1章
#include "chapter-2.typ" //第2章
