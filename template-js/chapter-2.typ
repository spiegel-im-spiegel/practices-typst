#import "settings.typ": * //各種ローカル設定

= ドキュメントで使用しているフォント

== 本文で使用しているフォント

#typstjs では本文に欧文フォントと和文フォントの2種類を指定する。

このドキュメントでは欧文フォントに#stix2 およびLiberation Sansを指定している。
STIX (Scientific and Technical Information eXchange) は科学技術出版に必要な全てのUnicodeフォントをオープンなライセンスで提供しようというプロジェクトで，#stix2 はそのバージョン2にあたる。
#stix2 はSIL OFL 1.1ライセンスで提供されているが，標準では入っているプラットフォームはないため別途インストールが必要である。
ゴシック体のLiberation SansはHelvetica互換デザインのフォントでLinuxプラットフォームで広く使われている。
なお，WindowsではHelvetica互換デザインのフォントとしてArialが使われている。

和文フォントには#bizudmincho および#bizudgothic を指定している。
BIZ UDフォントシリーズは見やすく読み間違えにくいデザインが特徴でSIL OFL 1.1ライセンスで提供されている。
また，最近のWindowsやmacOSには標準で搭載されている。
なおLinuxプラットフォームでは（ディストリビューションによるが）別途インストールが必要である。

== コードの記述で使用しているフォント

#typstjs では設定されないが，コードの記述に関して以下のようにフォントを指定している。

```typst
#show raw: body => {
  set text(
    font: (
      (
        name: "Inconsolata",
        covers: "latin-in-cjk",
      ),
      "BIZ UDGothic",
      "Noto Color Emoji",
    ),
    size: 10pt,
  )
  body
}
```

#inconsolata はプログラムコードの表示に適した欧文用の等幅フォントで，SIL OFL 1.1ライセンスで提供されている。
和文フォントには#bizudgothic を指定している。
#notocoloremoji は絵文字用のNOTOフォントで，Linuxのディストリビューションには標準で搭載されていることが多いが，他のプラットフォームでは別途インストールする必要があるかもしれない。

== 数式モードで使用しているフォント

#typstjs では設定されないが，数式モードにおけるフォント指定は以下の通りである。

```typst
#show math.equation: set text(
  font: ("STIX Two Math", "BIZ UDMincho")
)
```

欧文フォントとしては#stix2 の数式用フォントを指定している。
和文フォントには#bizudmincho を指定している。

たとえば以下の記述に対して

```
$
  (integral_0^infinity (sin x) / sqrt(x) dif x)^2 =
  sum_(k=0)^infinity (2k)! / (2^(2k) (k!)^2) 1 / (2k+1) =
  product_(k=1)^(infinity) (4k^2) / (4k^2-1) =
  pi / 2
$
```

以下のように出力される。

#rect(width:100%, radius:3pt)[
$
  (integral_0^infinity (sin x) / sqrt(x) dif x)^2 =
  sum_(k=0)^infinity (2k)! / (2^(2k) (k!)^2) 1 / (2k+1) =
  product_(k=1)^(infinity) (4k^2) / (4k^2-1) =
  pi / 2
$
]
