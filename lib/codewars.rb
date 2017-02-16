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

  def opposite(n)
    return n * -1
  end

  def count_sheep(array)
    if array.nil?
      return 0
    end
    return array.select{ |sheep| sheep == true }.count
  end

  def open_or_senior(data)
    return data[0] >= 55 && data[1] > 7 ? "Senior" : "Open"
  end

  def open_or_senior_array(data)
    data.map { |member| open_or_senior(member) }
  end

end
