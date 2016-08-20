class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    dna2 = strand2.to_a

    strand1.to_a.each_with_index.select do |nucleotide, index|
      nucleotide != dna2[index]
    end.length
  end
end

class String
  def to_a
    self.split('')
  end
end
