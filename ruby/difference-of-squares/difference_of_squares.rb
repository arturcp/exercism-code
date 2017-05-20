class Squares
  def initialize(number)
    @number = number
  end

  def difference
    @difference ||= square_of_sum - sum_of_squares
  end

  def square_of_sum
    @number.downto(1).reduce(0, &:+) ** 2
  end

  def sum_of_squares
    @number.downto(1).reduce(0) { |sum, n| sum += n ** 2 }
  end
end

module BookKeeping
  VERSION = 3.freeze
end
