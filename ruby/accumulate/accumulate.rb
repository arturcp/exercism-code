class Array
  def accumulate
    result = []
    index = 0
    while index < length
      result << yield(self[index])
      index += 1
    end

    result
  end
end

module BookKeeping
  VERSION = 1
end
