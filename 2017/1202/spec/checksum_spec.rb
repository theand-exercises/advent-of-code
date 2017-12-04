require 'spec_helper'

describe Checksum do

  let(:checksum) { Checksum }

  describe "#minmaxdiff_by_row" do

    it 'it should be 8' do
      checksum.diff_minmax_by_row("5 1 9 5").must_equal 8
    end

    it 'it should be 4' do
      checksum.diff_minmax_by_row("7 5 3").must_equal 4
    end

    it 'it should be 6' do
      checksum.diff_minmax_by_row("2 4 6 8").must_equal 6
    end
  end

  describe "#sum_of_diff_minmax_by_sheet" do

    it "it should be 8" do
      sheet = <<EOL
5 1 9 5
7 5 3
2 4 6 8
EOL
      checksum.sum_of_diff_minmax_by_sheet(sheet.strip).must_equal 18
    end

  end


  describe "#sum_of_evenly_divisible_by_row" do

    it 'it should be 4' do
      checksum.evenly_divisible_by_row("5 9 2 8").must_equal 4
    end

    it 'it should be 3' do
      checksum.evenly_divisible_by_row("9 4 7 3").must_equal 3
    end

    it 'it should be 2' do
      checksum.evenly_divisible_by_row("3 8 6 5").must_equal 2
    end
  end

  describe "#sum_of_evenly_divisible_by_sheet" do

    it "it should be 9" do
      sheet = <<EOL
5 9 2 8
9 4 7 3
3 8 6 5
EOL
      checksum.sum_of_evenly_divisible_by_sheet(sheet.strip).must_equal 9
    end

  end


end
