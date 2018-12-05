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


  describe "#find_first_freq_reached_twice" do
    it 'it should be 2' do
      df.find_first_freq_reached_twice("+1,-2,+3,+1,+1,-2", 0).must_equal 2
    end

    it 'it should be 0' do
      df.find_first_freq_reached_twice("+1, -1", 0).must_equal 0
    end

    it 'it should be 10' do
      df.find_first_freq_reached_twice("+3, +3, +4, -2, -4", 0).must_equal 10
    end

    it 'it should be 5' do
      df.find_first_freq_reached_twice("-6, +3, +8, +5, -6", 0).must_equal 5
    end

    it 'it should be 14' do
      df.find_first_freq_reached_twice("+7, +7, -2, -7, -4", 0).must_equal 14
    end


  end

end
