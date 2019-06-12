package main

import (  
    "fmt"
)

func bothops(a func(a, b int) int, b func(a, b int) int) {  

    fmt.Println(a(60, 7) + b(60, -7))
}

func main() {  
    f := func(a, b int) int {
        return a + b
    }

   g := func(a, b int) int {
        return a + b
    }
    bothops(f, g)
}