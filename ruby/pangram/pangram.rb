class Pangram
  def self.pangram?(sentence)
    letters = {}
    sentence.each_char do |char|
      letters[char.downcase] = true if char.upcase != char.downcase
    end
    letters.keys.length == 26
  end
end

module BookKeeping
  VERSION = 4
end
