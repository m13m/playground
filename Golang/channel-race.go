/*package main

import (
	"fmt"
)

func main() {
	out := make(chan int)

	go multiplybyThree(3, out)

	value := <- out
	fmt.Println(value)
}

func multiplybyThree(num int, out chan<- int){

	result := num * 3
	out <- result
}

*/

package main 

import (
	"fmt"
	//"sync"
)

func main() {

	
	x := getInts()
	fmt.Print(x)


	
}

func getInts() int {
	var x int
	//var wg sync.WaitGroup

	//wg.Add(1)
	lock := make(chan int)
	
	go func() {
		x = 50
		lock <- 0
		//wg.Done()
	}()

	<- lock
	//wg.Wait()
	return x

}