class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_counts = Hash.new(0)
    words = phrase.scan(/[a-zA-Z\d']+/)
    words.each do |word|
      word = word.downcase
      if word.count("'") > 1
        word_counts[word.tr("'", "")] += 1
      else
        word_counts[word] += 1
      end
    end
    word_counts
  end
end

module BookKeeping
  VERSION = 1
end
