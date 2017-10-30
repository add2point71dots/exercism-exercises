class Trinary
  attr_reader :trinary_num

  def initialize(trinary_num)
    @trinary_num = trinary_num
  end

  def to_decimal
    total = 0
    power = 0
    if trinary_num =~ /\A[0-2]*\z/
      (trinary_num.length-1).downto(0) do |i|
        total += trinary_num[i].to_i * (3 ** power)
        power += 1
      end
    end
    total
  end
end

module BookKeeping
  VERSION = 1
end
