class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(num)
    raise ArgumentError.new("Slice cannot be > series length") if num > series.length
    (0..series.length-num).map { |n| series[n...n+num] }
  end
end
