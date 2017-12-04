

class Checksum

  def self.minmaxdiff_by_row row
    min, max = row.strip.split.map(&:to_i).minmax
    max - min
  end

  def self.sum_of_minmaxdiff_by_sheet sheet
    sheet.strip.split("\n").map { |x| self.minmaxdiff_by_row x}.sum
  end

  private

end
