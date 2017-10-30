package accumulate

const testVersion = 1

func Accumulate(strs []string, fn func(string) string) []string {
	for i := 0; i < len(strs); i++ {
		strs[i] = fn(strs[i])
	}
	return strs
}
