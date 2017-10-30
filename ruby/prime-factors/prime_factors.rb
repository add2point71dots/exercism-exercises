class PrimeFactors
  def self.for(num)
    prime_factors = []
    2.upto(num) do |i|
      while num % i == 0
        prime_factors << i
        num /= i
      end
      break if num == 1
    end
    prime_factors
  end
end
