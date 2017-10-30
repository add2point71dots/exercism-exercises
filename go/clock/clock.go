package clock

import "fmt"

const testVersion = 4

type Clock struct {
	Hour   int
	Minute int
}

func New(hour, minute int) Clock {
	clk := Clock{0, 0}
	clk = clk.Add((hour * 60) + minute)
	return clk
}

func (clk Clock) String() string {
	hour := fmt.Sprintf("%02d", clk.Hour)
	minute := fmt.Sprintf("%02d", clk.Minute)
	return hour + ":" + minute
}

func (clk Clock) Add(minutes int) Clock {
	clk.Minute += minutes
	clk.Hour += (clk.Minute / 60)

	if clk.Minute < 0 && (clk.Minute%60) != 0 {
		clk.Hour -= 1
	}

	clk.Hour %= 24
	clk.Minute %= 60

	if clk.Hour < 0 {
		clk.Hour += 24
	}
	if clk.Minute < 0 {
		clk.Minute += 60
	}
	return clk
}
