package main

import (
	"fmt"
)

func main(){
	maxNum := 100
	sums := sumOfSquares(maxNum)
	squareSums := squareOfSums(maxNum)
	diff := squareSums - sums

	fmt.Println("The difference is ", diff) //25,164,150
}

func sumOfSquares(maxNum int) int {
	sum := 0
	for i := 1; i <= maxNum; i++ {
		sum += i * i
	}
	return sum
}

func squareOfSums(maxNum int) int {
	sum := 0
	for i := 1; i <= maxNum; i++ {
		sum += i
	}
	sum = sum * sum
	return sum
}