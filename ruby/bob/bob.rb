class Bob
  def self.hey(remark)
    return "Whoa, chill out!" if remark.upcase == remark && remark.downcase != remark.upcase
    return "Sure." if remark.match(/[?]\z/)
    return "Fine. Be that way!" if remark =~ /\A\s*\z/
    "Whatever."
  end
end
