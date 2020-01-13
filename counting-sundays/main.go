package main

import (
	"fmt"
	"time"
)

func main() {
	begin := time.Date(1991, 01, 01, 0,0,0, 0, time.UTC)
	end := time.Date(2000, 12, 31,  0,0,0, 0, time.UTC)
	dayOfWeek := "Sunday"
	count := 0

	for d := begin; d.After(end) == false; d = d.AddDate(0, 0, 1) {
		if d.Weekday().String() == dayOfWeek && d.Day() == 01 {
			count += 1
		}
	}
	by, bm, bd := begin.Date()
	ey, em, ed := end.Date()
	fmt.Println("There were", count, dayOfWeek, "the firsts from", bm, bd, by, "to", em, ed, ey)
}