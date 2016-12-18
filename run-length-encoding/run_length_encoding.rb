class RunLengthEncoding
  def self.encode(input)
    group_chars(input).map do |group|
      group.length == 1 ? group.first : group.length.to_s + group.first
    end.join
  end

  def self.decode(input)
    split_chars(input).map do |number, char|
      number.empty? ? char : char * number.to_i
    end.join
  end

  def self.group_chars(input)
    input.chars.chunk_while { |a, b| a == b }.to_a
  end

  def self.split_chars(input)
    input.scan(/(\d*)(\D{1})/)
  end

  private_class_method :group_chars, :split_chars
end

module BookKeeping
  VERSION = 2.freeze
end
