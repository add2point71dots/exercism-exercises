class Prime
  def self.nth(num)
    raise ArgumentError.new("There is no 0th prime") if num == 0
    return 2 if num == 1
    primes = [2, 3]
    next_prime = primes.last + 2
    until primes.length == num
      prime = true
      primes.each do |p|
        if next_prime % p == 0
          prime = false
          break
        end
        break if p > Math.sqrt(next_prime)
      end
      primes << next_prime if prime
      next_prime += 2
    end
    primes.last
  end
end

module BookKeeping
  VERSION = 1
end
