class Complement
  def self.of_dna(dna)
    dna_to_rna = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
    rna = ""
    dna.each_char do |ch|
      return "" if !dna_to_rna[ch]
      rna += dna_to_rna[ch]
    end
    return rna
  end
end

module BookKeeping
  VERSION = 4
end
