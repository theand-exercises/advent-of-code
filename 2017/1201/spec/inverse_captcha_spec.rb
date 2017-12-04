require 'spec_helper'

describe InverseCaptcha do

  let(:captcha) { InverseCaptcha }

  describe "#next_digit_solve" do
    it 'it should be 3' do
      captcha.next_digit_solve('1122').must_equal 3
    end

    it 'it should be 4' do
      captcha.next_digit_solve('1111').must_equal 4
    end

    it 'it should be 0' do
      captcha.next_digit_solve('1234').must_equal 0
    end

    it 'it should be 9' do
      captcha.next_digit_solve('91212129').must_equal 9
    end
  end

  describe "#half_around_digit_solve" do

    it 'it should be 6' do
      captcha.half_around_digit_solve('1212').must_equal 6
    end

    it 'it should be 0' do
      captcha.half_around_digit_solve('1221').must_equal 0
    end

    it 'it should be 4' do
      captcha.half_around_digit_solve('123425').must_equal 4
    end

    it 'it should be 12' do
      captcha.half_around_digit_solve('123123').must_equal 12
    end

    it 'it should be 4' do
      captcha.half_around_digit_solve('12131415').must_equal 4
    end
  end



end
