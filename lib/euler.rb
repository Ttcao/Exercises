class Euler

  def initialize
  end

  def sum_of_multiples(multiple1, multiple2, limit)
    multiples = []
    (1..limit-1).to_a.each do |i|
      if i % 3 == 0 || i % 5 == 0
        multiples.push(i)
      end
    end
    return multiples.reduce(:+)
  end

end
