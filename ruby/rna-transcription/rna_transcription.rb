module BookKeeping
  VERSION = 4.freeze
end

class Complement
  def self.of_dna(strand)
    return '' if invalid_strand?(strand)

    strand.tr('GCTA', 'CGAU')
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
