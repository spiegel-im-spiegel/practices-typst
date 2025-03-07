#let colorText(color: red, it) = {
  text(fill: color)[#it]
}

#colorText[Hello] #colorText(color: blue)[world]

#colorText("Hello") #colorText(color: blue, "world")

// #colorText(color: green, 1)
