class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(max)
    valid_factors_for(max).map do |factor|
      multiples(of: factor, max: max)
    end.flatten.uniq.reduce(0, &:+)
  end

  private

  def multiples(of:, max:)
    result = [of]
    number = of * 2

    while number < max
      result << number
      number += of
    end

    result
  end

  def valid_factors_for(max)
    @factors.reject { |factor| factor > max }
  end
end
