package main

import (
	"fmt"
	"math/big"
)

func main() {
	factorial := new(big.Int)
	factorial.MulRange(1, 100)
	sum := sumDigits(factorial)
	fmt.Println(sum)
}

// Big thanks to Jason Nichols for his answer at https://stackoverflow.com/questions/46395819/get-sum-of-bigint-number-golang
func sumDigits(x *big.Int) *big.Int {
	ten := big.NewInt(10)
	sum := big.NewInt(0)
	mod := big.NewInt(0)

	for ten.Cmp(x) < 0 {
		sum.Add(sum, mod.Mod(x, ten))
		x.Div(x, ten)
	}
	sum.Add(sum, x)
	return sum
}