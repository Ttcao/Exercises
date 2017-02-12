class Rosalind

  def initialize()
  end

  def counts_symbol(dna)
    array = dna.split("")

    count_A = array.select { |char| char == "A" }
    count_C = array.select { |char| char == "C" }
    count_G = array.select { |char| char == "G" }
    count_T = array.select { |char| char == "T" }

    return "#{count_A.length} #{count_C.length} #{count_G.length} #{count_T.length}"
  end

  def dna_to_rna(dna)
    upcase_dna = dna.upcase
    rna = upcase_dna.gsub(/[T]/, 'U')
    return rna
  end

  def complement(dna)
    complements = {
      "A" => "T",
      "T" => "A",
      "C" => "G",
      "G" => "C"
     }
     array = dna.split("")
     complement_dna = array.map { |c| complements[c]}
     complement_dna.join("")
  end

  def reversed_complement(dna)
    return complement(dna).reverse
  end
  
end
