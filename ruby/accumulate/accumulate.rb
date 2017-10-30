class Array
  def accumulate
    accumulated = []
    each { |e| accumulated << yield(e) }
    accumulated
  end
end

module BookKeeping
  VERSION = 1
end
