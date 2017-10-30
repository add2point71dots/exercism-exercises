class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    potential_primes = (2..limit).to_a
    potential_primes.each do |p|
      potential_primes.delete_if { |num| num % p == 0 && num != p }
    end
    potential_primes
  end
end

module BookKeeping
  VERSION = 1
end
