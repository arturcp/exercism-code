module BookKeeping
  VERSION = 2.freeze
end

class Raindrops
  def self.convert(number)
    result = []
    result << 'Pling' if number.has_factor?(3)
    result << 'Plang' if number.has_factor?(5)
    result << 'Plong' if number.has_factor?(7)

    result.empty? ? number.to_s : result.join('')
  end

end

class Fixnum
  def has_factor?(factor)
    self % factor == 0
  end
end
