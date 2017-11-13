package acronym

import "strings"

const testVersion = 3

func Abbreviate(phrase string) string {
	acronym := ""
	for i, rune := range phrase {
		ch := strings.ToUpper(string(rune))
		if i == 0 || string(phrase[i-1]) == " " || string(phrase[i-1]) == "-" {
			acronym += ch
		}
	}
	return acronym
}
