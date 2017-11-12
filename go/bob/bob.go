package bob

import (
	"strings"
)

// Hey returns Bob's response to your input
func Hey(remark string) string {
	remarkRunes := []rune(strings.TrimSpace(remark))

	if strings.ToUpper(remark) == remark && strings.ToUpper(remark) != strings.ToLower(remark) {
		return "Whoa, chill out!"
	} else if len(remarkRunes) == 0 {
		return "Fine. Be that way!"
	} else if remarkRunes[len(remarkRunes)-1] == 63 {
		return "Sure."
	}
	return "Whatever."
}
