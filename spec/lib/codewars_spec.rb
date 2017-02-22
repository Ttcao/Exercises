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

  it "should return opposite #1" do
    actual = codewars.opposite(1)
    expected = -1
    expect(actual).to eq(expected)
  end

  it "should return opposite #2" do
    actual = codewars.opposite(-34)
    expected = 34
    expect(actual).to eq(expected)
  end

  it "counts sheep #1" do
    array1 =
        [true,  true,  true,  false,
        true,  true,  true,  true ,
        true,  false, true,  false,
        true,  false, false, true ,
        true,  true,  true,  true ,
        false, false, true,  true ]
    actual = codewars.count_sheep(array1)
    expected = 17
    expect(actual).to eq(expected)
  end

  it "counts sheep #2" do
    array1 = []
    actual = codewars.count_sheep(array1)
    expected = 0
    expect(actual).to eq(expected)
  end

  it "categorises member to open if member age is less than 55" do
    actual = codewars.open_or_senior([45, 12])
    expected = 'Open'
    expect(actual).to eq(expected)
  end

  it "categorises member to senior if member age is >= 55 and handicap is > 7" do
    actual = codewars.open_or_senior([55, 8])
    expected = 'Senior'
    expect(actual).to eq(expected)
  end

  it "categorises member to open if member age is >= 55 and handicap is <= 7" do
    actual = codewars.open_or_senior([55, 7])
    expected = 'Open'
    expect(actual).to eq(expected)
  end

  it "categorises an array of members to open or senior group #1" do
    actual = codewars.open_or_senior_array([[3, 12],[55,1],[91, -2],[54, 23]])
    expected = ['Open', 'Open', 'Open', 'Open']
    expect(actual).to eq(expected)
  end

  it "categorises an array to open or senior group #2" do
    actual = codewars.open_or_senior_array([[16, 23],[55,21],[19, -2],[104, 20]])
    expected = ['Open', 'Senior', 'Open', 'Senior']
    expect(actual).to eq(expected)
  end

  it "should return the longest consectutive string using two strings from an array" do
    actual = codewars.longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2)
    expected = "abigailtheta"
    expect(actual).to eq(expected)
  end

  it "should return the longest consectutive string using two strings from an array when k is negative" do
    actual = codewars.longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2)
    expected = ""
    expect(actual).to eq(expected)
  end

  it "should return the longest consectutive string using two strings from an array when k > size of array" do
    actual = codewars.longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15)
    expected = ""
    expect(actual).to eq(expected)
  end

  it "should return the longest consectutive string using two strings from an empty array" do
    actual = codewars.longest_consec([], 3)
    expected = ""
    expect(actual).to eq(expected)
  end

  # it "should find the int that appears an odd number of times #1" do
  #   actual = codewars.find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
  #   expected = -5
  #   expect(actual).to eq(expected)
  # end
  #
  # it "should find the int that appears an odd number of times #2" do
  #   actual = codewars.find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
  #   expected = -1
  #   expect(actual).to eq(expected)
  # end

end
