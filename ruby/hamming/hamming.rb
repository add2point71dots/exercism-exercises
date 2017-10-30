class Hamming
  def self.compute(str1, str2)
    raise ArgumentError.new if str1.length != str2.length
    differences = 0
    str1.length.times do |i|
      differences += 1 if str1[i] != str2[i]
    end
    return differences
  end
end


module BookKeeping
  VERSION = 3
end
