class Prime
  class << self
    def nth(nth_prime)
      raise ArgumentError if nth_prime == 0

      primes = [2]
      numbers = numbers_list

      while nth_prime > primes.length do
        n = numbers.next

        primes << n if prime?(n)
      end

      primes.last
    end

    def numbers_list
      Enumerator.new do |yielder|
        n = 3

        loop do
          yielder.yield n
          n += 2
        end
      end
    end

    def prime?(number)
      (2..Math.sqrt(number)).none? { |factor| number % factor == 0 }
    end
  end
end
