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
  show raw: it => {
    set text(
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
    it
  }

  //数式モードのフォント指定
  show math.equation: set text(
    font: (mathfont-name, mathfont-cjk-name, emojifont-name)
  )

  body
}

//ハイパーリンクの定義
#let typst = link("https://typst.app/")[Typst]
#let typstjs = link("https://github.com/okumuralab/typst-js")[`okumuralab/typst-js`]
#let typstuniverse = link("https://typst.app/universe/")[Typst Universe]
#let stix2 = link("https://github.com/stipub/stixfonts")[STIX Two]
#let bizudmincho = link("https://github.com/googlefonts/morisawa-biz-ud-mincho")[Morisawa BIZ UDMincho]
#let bizudgothic = link("https://github.com/googlefonts/morisawa-biz-ud-gothic")[Morisawa BIZ UDGothic]
#let notocoloremoji = link("https://github.com/googlefonts/noto-emoji")[Noto Color Emoji]
#let inconsolata = link("https://github.com/googlefonts/Inconsolata")[Inconsolata]
