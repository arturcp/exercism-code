class Grains
  TOTAL_SQUARES = 64

  def self.square(number)
    2 ** (number - 1)
  end

  def self.total
    square(TOTAL_SQUARES + 1) - 1
  end
end
