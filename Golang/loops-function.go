package main

import (
	"fmt"
	"math"
)

func Sqrt(x float64) (float64, int) {
	z := x/2
	counter := 1
	for {
		z -= (z*z - x) / (2 * z)
		counter++
		if z == math.Sqrt(x) {
			break;
		}
	}
	return z, counter
}

func main() {
	sqrt := float64(0)
	counter := 0
	sqrt, counter = Sqrt(100)
	fmt.Println(counter, sqrt)
}

