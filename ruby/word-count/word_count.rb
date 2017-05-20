class Phrase
  DEFAULT_SEPARATOR = ' '
  COMMA_SEPARATOR = ','

  def initialize(text)
    @text = text
  end

  def word_count
    hash = {}
    hash.default = 0
    words.each { |word| hash[word] += 1 }

    hash
  end

  private

  def words
    @words ||= @text.downcase
      .split(words_separator(@text))
      .map(&method(:strip_word))
      .reject(&:empty?)
  end

  def strip_word(word)
    unquote(word.gsub(/[^a-zA-Z0-9\']/, ''))
  end

  def unquote(word)
    word.gsub(/\A[\"\'](.*)[\"\']\Z/m, '\1')
  end

  def words_separator(text)
    text.include?(DEFAULT_SEPARATOR) ?
      DEFAULT_SEPARATOR :
      COMMA_SEPARATOR
  end
end

module BookKeeping
  VERSION = 1
end
