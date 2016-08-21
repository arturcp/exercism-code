class Pangram
  class << self
    LETTERS_IN_ALPHABET = 26

    def is_pangram?(sentence)
      unique_letters_in(sentence).count == LETTERS_IN_ALPHABET
    end

    def unique_letters_in(sentence)
      sentence
        .downcase
        .split('')
        .select { |char| char =~ /[a-z]/ }
        .uniq
    end
  end
end

module BookKeeping
  VERSION = 2.freeze
end
