package main

import (
	"fmt"
)

func bothops(a func(a, b int) int, b func(a, b int) int) {

	fmt.Println(a(60, 7) + b(60, -7))
}

var f = func(a, b int) int {
	return a + b
}

var g = func(a, b int) int {
	return a + b
}

func main() {

	bothops(f, g)
}
