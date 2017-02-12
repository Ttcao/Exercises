require 'rosalind'

describe Rosalind do

  let(:rosalind) { Rosalind.new }

  it "counts A, C, G and T #1" do
    actual = rosalind.counts_symbol("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
    expected = "20 12 17 21"
    expect(actual).to eq(expected)
  end

  it "counts A, C, G and T #2" do
    actual = rosalind.counts_symbol("AGCTTTTCATTA")
    expected = "3 2 1 6"
    expect(actual).to eq(expected)
  end

  it "counts A, C, G and T for empty string" do
    actual = rosalind.counts_symbol("")
    expected = "0 0 0 0"
    expect(actual).to eq(expected)
  end

  it "transcribe DNA to RNA #1" do
    actual = rosalind.dna_to_rna("GATGGAACTTGACTACGTAAATT")
    expected = "GAUGGAACUUGACUACGUAAAUU"
    expect(actual).to eq(expected)
  end

  it "transcribe DNA to RNA #2" do
    actual = rosalind.dna_to_rna("GAACTTGAACTAAT")
    expected = "GAACUUGAACUAAU"
    expect(actual).to eq(expected)
  end

  it "returns complement" do
    actual = rosalind.complement("ACGTAG")
    expected = "TGCATC"
    expect(actual).to eq(expected)
  end

  it "returns reversed complement" do
    actual = rosalind.reversed_complement("AAAACCCGGT")
    expected = "ACCGGGTTTT"
    expect(actual).to eq(expected)
  end

end
