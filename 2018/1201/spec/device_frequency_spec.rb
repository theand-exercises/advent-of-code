require 'spec_helper'

describe DeviceFrequency do

  let(:df) { DeviceFrequency }

  describe "#adjust" do
    it 'it should be 3' do
      df.adjust("+1", 0).must_equal 1
    end

    it 'it should be -1' do
      df.adjust("-2", 1).must_equal -1
    end

    it 'it should be 2' do
      df.adjust("+3", -1).must_equal 2
    end

    it 'it should be 3' do
      df.adjust("+1", 2).must_equal 3
    end

    it 'it should be 3' do
      df.adjust("+1, +1, +1", 0).must_equal 3
    end

    it 'it should be 0' do
      df.adjust("+1, +1, -2", 0).must_equal 0
    end

    it 'it should be -6' do
      df.adjust("-1, -2, -3", 0).must_equal -6
    end

    it 'it should be 3' do
      df.adjust("+1\n+1\n+1", 0).must_equal 3
    end

    it 'it should be 0' do
      df.adjust("+1\n+1\n-2", 0).must_equal 0
    end

    it 'it should be -6' do
      df.adjust("-1\n-2\n-3", 0).must_equal -6
    end
  end


end
