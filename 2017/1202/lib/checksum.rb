

class Array
  def except(value)
    self - [value]
  end
end

class Checksum

  def self.diff_minmax_by_row row
    min, max = row.strip.split.map(&:to_i).minmax
    max - min
  end

  def self.sum_of_diff_minmax_by_sheet sheet
    sheet.strip.split("\n").map { |x| self.diff_minmax_by_row x}.sum
  end

  def self.evenly_divisible_by_row row
    nums = row.strip.split.map(&:to_i)
    min, max = nums.select do |x|
      not nums.except(x).select {|y|  (y % x == 0 || x % y == 0) }.empty?
    end.sort
    max/min
  end

  def self.sum_of_evenly_divisible_by_sheet sheet
    sheet.strip.split("\n").map { |x| self.evenly_divisible_by_row x}.sum
  end

  private

end
