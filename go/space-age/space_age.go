package space

type Planet string

// Age returns the number of years old you would be on a planet
func Age(seconds float64, planet Planet) float64 {
	earthSeconds := float64(31557600)
	secondsRatios := map[Planet]float64{
		"Earth":   1,
		"Mercury": .2408467,
		"Venus":   .61519726,
		"Mars":    1.8808158,
		"Jupiter": 11.862615,
		"Saturn":  29.447498,
		"Uranus":  84.016846,
		"Neptune": 164.79132,
	}
	secondsInYear := earthSeconds * secondsRatios[planet]
	return float64(int((seconds/secondsInYear+.005)*100)) / 100
}
