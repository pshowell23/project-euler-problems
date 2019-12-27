package main

import (
	"fmt"
	"math"
)

func main() {
	factor := getLargestPrimeFactor(primeFactors(getFactors(600851475143)))
	fmt.Println("Largest Prime Factor: ", factor) // Answer: 6857
}

func getLargestPrimeFactor(nums []int) int {
	 return nums[len(nums) - 1]
}

func getFactors(num int) []int {
	var factors []int
	for i := 1; i < int(math.Sqrt(float64(num))); i++ {
		if num % i == 0 {
			factors = append(factors, i, num / i)
		}
	}
	return factors
}

func primeFactors(nums []int) []int {
	var primeFactors []int

	for i := 0; i < len(nums); i++ {
		if isPrime(nums[i]) {
			primeFactors = append(primeFactors, nums[i])
		}
	}

	return primeFactors
}

// Function found: https://www.thepolyglotdeveloper.com/2016/12/determine-number-prime-using-golang/
func isPrime(num int) bool {
	for j := 2; j <= int(math.Floor(math.Sqrt(float64(num)))); j++{
		if num % j == 0 {
			return false
		}
	}
	return num > 1
}