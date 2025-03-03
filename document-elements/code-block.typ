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

```go
package main

import "fmt"

func main() {
	fmt.Println("Hello, 世界")
}
```
