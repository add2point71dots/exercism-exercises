class RunLengthEncoding
  def self.encode(input)
    output = ""
    count = 1
    input.each_char.with_index do |char, i|
      if char == input[i+1]
        count += 1
      else
        output += count.to_s if count > 1
        output += char
        count = 1
      end
    end
    output
  end

  def self.decode(input)
    output = ""
    digit = ""
    input.each_char.with_index do |char, i|
      if char =~ /\d/
        digit += char
      else
        output += digit != "" ? char * digit.to_i : char
        digit = ""
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 3
end
