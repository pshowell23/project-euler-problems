package main

import "fmt"

func main() {
	sum := getSum(1000)

	fmt.Println("Total:", sum)
}

func getSum(x int) int {
	sum := 0

	for i := 0; i < x; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}
	return sum
}
