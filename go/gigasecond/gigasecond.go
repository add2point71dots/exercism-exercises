package gigasecond

import "time"

const testVersion = 4

func AddGigasecond(date time.Time) time.Time {
	return date.Add((time.Second * 1000000000))
}
