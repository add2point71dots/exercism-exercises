package raindrops

import "fmt"

const testVersion = 3

func Convert(num int) string {
	raindrop := ""

	if num%3 == 0 {
		raindrop += "Pling"
	}
	if num%5 == 0 {
		raindrop += "Plang"
	}
	if num%7 == 0 {
		raindrop += "Plong"
	}

	if raindrop != "" {
		return raindrop
	}
	return fmt.Sprint(num)
}
