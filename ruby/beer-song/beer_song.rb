class BeerSong
  def verse(num)
    currentNum = num == 0 ? "no more" : num.to_s
    nextNum = num-1 == 0 ? "no more" : (num-1) % 100

    command = case num
      when 0
        "Go to the store and buy some more"
      when 1
        "Take it down and pass it around"
      else
        "Take one down and pass it around"
    end

    "#{currentNum.capitalize} #{pluralize(num, "bottle")} of beer on the wall, #{currentNum} #{pluralize(num, "bottle")} of beer.\n" \
    "#{command}, #{nextNum} #{pluralize(num-1, "bottle")} of beer on the wall.\n"
  end

  def verses(first, last)
    verses = ""
    first.downto(last) do |num|
      verses += verse(num)
      verses += "\n" if num != last
    end
    verses
  end

  private

  def pluralize(num, word)
    num == 1 ? word : word + "s"
  end
end

module BookKeeping
  VERSION = 3
end
