#set text(font: "Noto Sans CJK JP", lang: "ja")
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

#let date = datetime(day: 1, month: 12, year: 2025)

- 既定の出力： #date.display() \
- 年： #date.year() \
- 月： #date.month() \
- 日： #date.day() \
- 曜日： #date.weekday() `(0, 1, 2, ... as 日, 月, 火, ...)`\
