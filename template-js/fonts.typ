//フォント名の設定
#let seriffont-name = "STIX Two Text"
#let seriffont-cjk-name = "BIZ UDMincho"
#let sansfont-name = "Liberation Sans"
#let sansfont-cjk-name = "BIZ UDGothic"
#let monofont-name = "Inconsolata"
#let monofont-cjk-name = "BIZ UDGothic"
#let emojifont-name = "Noto Color Emoji"
#let mathfont-name = "STIX Two Math"
#let mathfont-cjk-name = "BIZ UDMincho"
#let fontsize-value = 10pt

//フォントの初期化
#let initializeFonts(body) = {
  //コードブロックのフォント定義
  show raw: set text(
    font: (
      (
        name: monofont-name,
        covers: "latin-in-cjk",
      ),
      sansfont-cjk-name,
      emojifont-name,
    ),
    size: fontsize-value,
  )

  //数式モードのフォント指定
  show math.equation: set text(
    font: (mathfont-name, mathfont-cjk-name, emojifont-name)
  )

  body
}
