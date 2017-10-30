class Grains
  def self.square(square)
    raise ArgumentError.new("Square must be between1 and 64") if square < 1 || square > 64
    2 ** (square-1)
  end

  def self.total
    (1..64).inject { |sum, n| sum + square(n) }
  end
end

module BookKeeping
  VERSION = 1
end
