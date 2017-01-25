class Array
  def accumulate
    self.map { |item| yield item }
  end
end

module BookKeeping
  VERSION = 1
end
