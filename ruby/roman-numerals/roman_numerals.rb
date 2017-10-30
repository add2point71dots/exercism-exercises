class Integer
  def to_roman
    roman_num = ""
    roman_num += "M" * (self / 1000)
    if (self % 1000) >= 400
      roman_num += "C" if (self % 500) / 100 == 4
      roman_num += self % 1000 >= 900 ? "M" : "D"
    end
    roman_num += "C" * ((self % 500) / 100) if self % 500 < 400
    if (self % 100) >= 40
      roman_num += "X" if (self % 50) / 10 == 4
      roman_num += self % 100 >= 90 ? "C" : "L"
    end
    roman_num += "X" * ((self % 50) / 10) if self % 50 < 40
    if (self % 10) >= 4
      roman_num += "I" if (self % 5) == 4
      roman_num += self % 10 >= 9 ? "X" : "V"
    end
    roman_num += "I" * (self % 5) if self % 5 < 4
    roman_num
  end
end

module BookKeeping
  VERSION = 2
end
