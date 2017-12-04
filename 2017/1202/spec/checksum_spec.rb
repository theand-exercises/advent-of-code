require 'spec_helper'

describe Checksum do

  let(:checksum) { Checksum }

  describe "#minmaxdiff_by_row" do

    it 'it should be 8' do
      checksum.minmaxdiff_by_row("5 1 9 5").must_equal 8
    end

    it 'it should be 4' do
      checksum.minmaxdiff_by_row("7 5 3").must_equal 4
    end

    it 'it should be 6' do
      checksum.minmaxdiff_by_row("2 4 6 8").must_equal 6
    end
  end

  describe "#sum_of_minmaxdiff_by_sheet" do

    it "it should be 8" do
      sheet = <<EOL
5 1 9 5
7 5 3
2 4 6 8
EOL
      checksum.sum_of_minmaxdiff_by_sheet(sheet.strip).must_equal 18
    end

  end


end
