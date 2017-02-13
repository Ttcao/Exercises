require 'codewars'

describe Codewars do

  let(:codewars) { Codewars.new }

  it "should return a negative value #1" do
    actual = codewars.make_negative(1)
    expected = -1
    expect(actual).to eq(expected)
  end

  it "should return a negative value #2" do
    actual = codewars.make_negative(-5)
    expected = -5
    expect(actual).to eq(expected)
  end

  it "should return a negative value #3" do
    actual = codewars.make_negative(0)
    expected = 0
    expect(actual).to eq(expected)
  end

  it "should return accum string #1" do
    actual = codewars.accum("EvidjUnokmM")
    expected = "E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm"
    expect(actual).to eq(expected)
  end

  it "should return accum string #2" do
    actual = codewars.accum("HbideVbxncC")
    expected = "H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc"
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #1" do
    actual = codewars.sum_array([6, 2, 1, 8, 10])
    expected = 16
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #2" do
    actual = codewars.sum_array([1, 1, 11, 2, 3])
    expected = 6
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #3" do
    actual = codewars.sum_array([-6, -20, -1, -10, -12])
    expected = -28
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #4" do
    actual = codewars.sum_array([])
    expected = 0
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #5" do
    actual = codewars.sum_array(nil)
    expected = 0
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #6" do
    actual = codewars.sum_array([3])
    expected = 0
    expect(actual).to eq(expected)
  end

  it "should return the sum of array excluding lowest and highest value in array #7" do
    actual = codewars.sum_array([-3, -5])
    expected = 0
    expect(actual).to eq(expected)
  end

end
