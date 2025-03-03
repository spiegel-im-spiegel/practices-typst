#set text(font: "NOTO Serif CJK JP", lang: "ja")

#let tableOfHolidays(path) = {
  let holidays = csv(
    path,
    delimiter: ",",
    row-type: dictionary,
  )

  if holidays.len() > 0 {
    let header = holidays.first().keys()
    table(
      columns: (auto, auto, auto),
      align: (right, center, left),
      fill: (x, y) => if y == 0 {
        green.lighten(80%)
      },
      table.header(..header.map(it => {
          set text(font: "NOTO Sans CJK JP", weight: "bold")
          it
      })),
      ..holidays.map(holiday => (holiday.at(header.at(0)), holiday.at(header.at(1)), holiday.at(header.at(2)))).flatten()
    )
  }
}

#figure(
  tableOfHolidays("./holidays.csv"),
  caption: figure.caption(
    position: top,
    [2025年5月の祝日・休日]
  ),
)
