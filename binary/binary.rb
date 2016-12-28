class Binary
  def self.to_decimal(binary)
    chars = binary.chars
    raise ArgumentError unless (chars - ['0', '1']).empty?

    chars.map.with_index(0) do |char, index|
       char.to_i * 2 ** (binary.length - index - 1)
    end.reduce(:+)
  end
end

module BookKeeping
  VERSION = 3
end
