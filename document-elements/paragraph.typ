// for main text
#set text(font: (
    (
      name: "New Computer Modern",
      covers: "latin-in-cjk",
    ),
    "Noto Serif CJK JP"
  ),
  lang: "ja",
)

//for headings
#show heading: body => {
  set text(font: (
      (
        name: "Liberation Sans",
        covers: "latin-in-cjk",
      ),
      "Noto Sans CJK JP"
    ),
    lang: "ja",
  )
  body
  v(0.2em)
}

//for paragraph
#set par(
  first-line-indent: (
    amount: 1em,
    all: true,
  ),
  leading: 0.9em,
  spacing: 0.9em,
  justify: true,
)

= Go のエラーハンドリング
#v(1em)

プログラミングにおいて，正常系は基本的に「一本道」だが，異常系は（予期しないものも含めて）無数にある。
エラーハンドリングは巨大迷路パズルを袋小路から順に塗りつぶして「正解」をあぶり出していく作業に似ていると思う。
下手くそな迷路攻略はただの「作業」だが，*よく考えられた迷路は袋小路の配置も美しい*。

こんなふうに考えるなら，プログラム設計の肝はエラー（＝袋小路）をどう記述するかにかかっている，と言えるだろう。
