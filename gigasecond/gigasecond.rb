module BookKeeping
  VERSION = 3.freeze
end

class Gigasecond
  SECONDS = 10 ** 9

  def self.from(time)
    time + SECONDS
  end
end
