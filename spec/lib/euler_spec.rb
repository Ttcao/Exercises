require 'euler'

describe Euler do

  let(:euler) { Euler.new }

  it "finds the sum of all the multiples of 3 or 5 below 1000" do
    actual = euler.sum_of_multiples(3, 5, 10)
    expected = 23
    expect(actual).to eq(expected)
  end

end
