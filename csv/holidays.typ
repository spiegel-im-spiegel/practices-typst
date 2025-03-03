#set text(font: "BIZ UDMincho", lang: "ja")

#{
  let holidays = csv(
    "./holidays.csv",
    delimiter: ",",
    row-type: dictionary,
  )

  if holidays.len() > 0 {
    let header = holidays.first().keys()
    figure(
      table(
        columns: (auto, auto, auto),
        align: (right, center, left),
        table.header(..header.map(it => {
            set text(font: "BIZ UDGothic", weight: "bold")
            it
        })),
        ..holidays.map(holiday => (holiday.at(header.at(0)), holiday.at(header.at(1)), holiday.at(header.at(2)))).flatten()
      ),
      caption: figure.caption(
        position: top,
        [2025年5月の祝日・休日]
      ),
    )
  }
}
