package main

import "fmt"

type Node struct {
	Value int
	Left  *Node
	Right *Node
}

func printNode(n *Node) {
	fmt.Println("Value: ", n.Value)
	fmt.Println("Left: ", n.Left.Value)
	fmt.Println()
}

func main() {

	var age int

	fmt.Scanf("Age %d", age)

	fmt.Println(age)

	test2 := &Node{
		Value: 123,
	}

	test := &Node{
		Value: 123,
		Left:  test2,
	}

	printNode(test)

	fmt.Println(age)

}
