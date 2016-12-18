class RunLengthEncoding
  def self.encode(input)
    index = 0
    result = ''
    current_letter = input.empty? ? '' : input[0]

    while index < input.length
      count = 0
      while index < input.length && input[index] == current_letter
        index += 1
        count += 1
      end

      result << (count == 1 ? current_letter : "#{count}#{current_letter}")
      current_letter = input[index]
    end

    result
  end

  def self.decode(input)
    index = 0
    result = ''

    while index < input.length
      number = ''

      while index < input.length && input[index].to_i != 0
        number += input[index]
        index += 1
      end

      number = 1 if number.empty?

      result += input[index] * number.to_i
      index += 1
    end

    result
  end
end

module BookKeeping
  VERSION = 2.freeze
end
