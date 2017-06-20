class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits.chars
  end

  def slices(substring_length)
    raise ArgumentError.new if digits.length < substring_length

    (0..iterations_for(substring_length)).map do |index|
      digits.slice(index, substring_length).join('')
    end
  end

  private

  def iterations_for(length)
    digits.length - length
  end
end
