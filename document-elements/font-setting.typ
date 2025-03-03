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

// for headings
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

// for code blocks
#show raw: body => {
    set text(font: (
      (
        name: "Inconsolata",
        covers: "latin-in-cjk",
      ),
      "Noto Sans CJK JP"
    ))
    body
}

= Albert Einsteinについて

Albert Einsteinは1879年3月14日，ドイツ生まれの理論物理学者です。
彼による革命的な3つの論文「光電効果の理論」「ブラウン運動の理論」「特殊相対性理論」が発表された1905年は「奇跡の年」と呼ばれています。

= Go 言語で行こう

#rect(width:100%, radius:3pt)[
```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, 世界")
}
```
]
