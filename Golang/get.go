package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

func main() {
	responseSize("https://jsonplaceholder.typicode.com/todos/1")
	responseSize("https://jsonplaceholder.typicode.com/todos/2")
	responseSize("https://jsonplaceholder.typicode.com/todos/3")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")
	responseSize("https://jsonplaceholder.typicode.com/todos/4")

	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')
	fmt.Println(text)
}

func responseSize(url string) {
	response, err := http.Get(url)

	if err != nil {
		log.Fatal(err)
	}

	defer response.Body.Close()

	body, err := ioutil.ReadAll(response.Body)

	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(len(body))
}
