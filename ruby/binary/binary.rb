class Binary
  def self.to_decimal(binary)
    raise ArgumentError.new("not a valid binary string") if !(binary.match(/\A[01]+\z/))
    decimal = 0
    power = 0
    (binary.length-1).downto(0) do |i|
      decimal += 2 ** power if binary[i] == "1"
      power += 1
    end
    decimal
  end
end

module BookKeeping
  VERSION = 3
end
