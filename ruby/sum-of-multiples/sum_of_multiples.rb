class SumOfMultiples
  attr_reader :nums

  def initialize(*args)
    @nums = args.to_a
  end

  def to(max_product)
    products = (0...max_product).select do |i|
      i == 0 || nums.any? { |num| i % num == 0 }
    end
    products.inject(:+)
  end
end

module BookKeeping
  VERSION = 1
end
