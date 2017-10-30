class Raindrops
  def self.convert(num)
    raindrop = ""
    raindrop += "Pling" if num % 3 == 0
    raindrop += "Plang" if num % 5 == 0
    raindrop += "Plong" if num % 7 == 0
    (raindrop != "") ? raindrop : num.to_s
  end
end

module BookKeeping
  VERSION = 3
end
