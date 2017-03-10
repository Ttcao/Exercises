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

  def longest_consec(strarr, k)
    return "" if strarr.empty? || k <= 0
    joined_arr = strarr.map.with_index do |word, index|
      consec_str = ""
      (index..(index+k-1)).each do |i|
        consec_str << strarr[i] if (index+k-1) < strarr.length
      end
      consec_str
    end
    sorted = joined_arr.sort_by { |word| word.length }
    max_length = sorted[sorted.length - 1].length
    words_with_max_length = sorted.select { |elem| elem.length == max_length}
    return words_with_max_length[0]
  end

  def error_printer(string)
    printer_errors = ("n".."z").to_a

    chars = string.split("")
    length_of_printer_string = chars.count
    num_of_printer_errors = chars.select { |char| printer_errors.include?(char) }.count

    return "#{num_of_printer_errors}/#{length_of_printer_string}"
  end

  def find_it(seq)
    seq.find { |int| seq.count(int).odd? }
  end

end
