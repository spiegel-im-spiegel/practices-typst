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

#figure(
  table(
    columns: (auto, auto, auto),
    align: (right, center, left),
    table.header([*日付*], [*曜日*], [*内容*]),
    [2025年5月3日], [土], [憲法記念日],
    [2025年5月4日], [日], [みどりの日],
    [2025年5月5日], [月], [こどもの日],
    [2025年5月6日], [火], [休日],
  ),
  caption: [2025年5月の祝日・休日],
) <holiday>

@holiday は国立天文台で公開されている暦データから抽出したもの。
詳しくは拙文
「#link("https://text.baldanders.info/remark/2019/05/google-ephemeris/")[カレンダーに祝日を入れたいなら国立天文台へ行けばいいじゃない]」
を参照のこと。
