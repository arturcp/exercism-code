class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary =~ /[^0-1]/

    binary.chars.map.with_index(0) do |char, index|
       char.to_i * 2 ** (binary.length - index - 1)
    end.reduce(:+)
  end
end

module BookKeeping
  VERSION = 3
end
