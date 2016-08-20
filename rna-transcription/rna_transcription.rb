module BookKeeping
  VERSION = 4.freeze
end

class Complement
  MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    return '' if invalid_strand?(strand)

    strand.to_a.map do |nucleotide|
      MAP[nucleotide]
    end.join('')
  end

  def self.invalid_strand?(strand)
    strand.match(/[^GCTA]/)
  end
end

class String
  def to_a
    self.split('')
  end
end
