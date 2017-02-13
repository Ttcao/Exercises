class Codewars

  def initialize
  end

  def make_negative(n)
    if n == 0
      return 0
    elsif n > 0
      return n * -1
    else n < 0
      return n
    end
  end

  def accum(s)
    chars = s.upcase.split("")
    chars.map.with_index { |c, index| c + (c.downcase * (index)) }.join("-")
  end

  def sum_array(arr)
    if arr.nil? || arr.length < 3
      return 0
    end
    slice = arr.sort.slice(1..(arr.length-2))
    return slice.reduce(:+)
  end

end
