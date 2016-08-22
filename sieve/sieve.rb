class Sieve
  def initialize(limit)
    @prime_candidates = (2..limit).to_a
  end

  def primes
    @primes ||= begin
      primes = []

      while prime_number = @prime_candidates.shift
        primes << prime_number
        @prime_candidates.reject! { |n| n % prime_number == 0 }
      end

      primes
    end
  end
end
