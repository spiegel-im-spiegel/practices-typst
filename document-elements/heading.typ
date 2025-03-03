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
#set heading(numbering: "1.1")
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

#outline()
#v(3em)

= 見出し1
== 見出し1.1
=== 見出し1.1.1
== 見出し1.2
= 見出し2
== 見出し2.1

#counter(heading).update(0) //見出しカウンタのリセット
#let unary(.., last) = "†" * last
#set heading(numbering: unary, outlined: false) //目次に含めない

= 付録1
= 付録2
