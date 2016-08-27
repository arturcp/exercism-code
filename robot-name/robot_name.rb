class Robot
  LETTERS = ('A'..'Z').to_a.freeze
  NUMBERS = (0..9).to_a.freeze

  @@used_names = []

  attr_reader :name

  def initialize
    generate_name!
  end

  def reset
    @@used_names -= [@name]
    generate_name!
  end

  private

  def generate_name!
    begin
      @name = "#{LETTERS.sample(2).join('')}#{NUMBERS.sample(3).join('')}"
    end while @@used_names.include?(@name)

    @@used_names << @name
  end
end

module BookKeeping
  VERSION = 2.freeze
end
