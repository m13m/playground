package main


import "fmt"

func change(w ...string) bool{
	
	w[0] = "GO"

	return true
}

func main() {
	w := [] string {"helo", "world"}

	change(w...)

	fmt.Println(w)

}






























/*package main

import (
	"fmt"
)

type Int int

func(a Int) add (b Int) Int {
	return a + b
}

func varadd(a int, b... int) int{
	counter := 0
	for _, v := range b {

		counter += v
		fmt.Println(counter)

	}

	return a + counter
}

func main() {


	

	val := varadd(0,5,6,7,8)

	fmt.Println(val)
}































package main

import (
	"fmt"
)

type Employee struct {
	name string
	salary int
	age int
	currency string
}
type Person struct {
	name string
	age int
}

func (e *Employee) changeAge (newage int) {
	e.age = newage
}

func (p Person) displayPerson() {
	fmt.Printf("The person name is %s and age is %d", p.name, p.age)
}
func (e Employee) displayEmployee() {
	fmt.Printf("Salary of %s is %s %d and age is %d\n", e.name, e.currency, e.salary, e.age)
}


func main() {
	emp1 := Employee {
		name: "Ram khan",
		salary: 50000,
		age: 21,
		currency: "INR",
	}
	emp1.displayEmployee()
	emp1.changeAge(4)
	emp1.displayEmployee()
	p := Person {
		name: "Mohsin Kumar",
		age: 21,

	}

	p.displayPerson()
}*/