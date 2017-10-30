class Gigasecond
  def self.from(date)
    return Time.at(date.to_i + 10**9)
  end
end

module BookKeeping
  VERSION = 6
end
