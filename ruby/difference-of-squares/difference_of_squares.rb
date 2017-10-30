class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    1.upto(num) { |i| sum += i }
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    1.upto(num) { |i| sum += i**2 }
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
