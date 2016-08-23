class Fixnum
  LETTERS = ['I', 'V', 'X', 'L', 'C', 'D', 'M', '', '']

  def to_roman
    digits.each_with_index.map do |digit, index|
      convert(*params_for(digit, index))
    end.reverse.join('')
  end

  private

  # Public: converts a one digit number to a Roman Numeral, respecting the
  # position it occupies in the original number.
  #
  # If you take the last digit on the right side of a number (the unit),
  # the roman letters that will compose the roman numeral are I, V and X. On
  # the second number to the right (the ten), the roman letters
  # are X, L and C. The pattern is as follows:
  #
  # Unit: I, II, III, IV, V, VI, VII, VIII, IX
  # Ten: X, XX, XXX, XL, L, LX, LXX, LXXX, LC
  # Hundred: C, CC, CCC, CD, D, DC, DCC, DCCC, DM
  # Thousand: M, MM, MMM
  #
  # Parameters:
  #
  #   * digit: one-digit number that will be converted.
  #   * minor: the roman letter that represents the smallest value for that
  #     part of the number. For `unit`, it is I. For `ten`, it is X. For `hundred`,
  #     it is C. For thousand, M.
  #   * middle: the roman letter that represents the middle number of the sequence
  #     for that part of the number. For `unit`, it is V. For `ten`, it is L.
  #     For `hundred`, it is D.
  #   * major: the roman letter that represents the highest value for that
  #     part of the number. For `unit`, it is X. For `ten`, it is C. For `hundred`,
  #     it is M.
  #
  # Limitation: this method will work with numbers up to 3000.
  #
  # Returns a roman numeral
  def convert(digit, minor, middle, major)
    if digit <= 3
      minor * digit
    elsif digit == 4
      "#{minor}#{middle}"
    elsif digit <= 8
      "#{middle}#{minor * (digit - 5)}"
    else
      "#{minor}#{major}"
    end
  end

  def digits
    self.to_s.split('').reverse.map(&:to_i)
  end

  def params_for(digit, position)
    [digit] + LETTERS.slice(2 * position, 3)
  end
end

module BookKeeping
  VERSION = 2.freeze
end
