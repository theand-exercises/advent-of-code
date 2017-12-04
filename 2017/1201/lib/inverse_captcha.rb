

class InverseCaptcha


  def self.next_digit_solve input
    input.split("").map.with_index { |x,i| x.to_i if is_same_to_next_digit x, input, i }.compact.sum
  end

  def self.half_around_digit_solve input
    input.split("").map.with_index { |x,i| x.to_i if is_same_to_half_around_digit x, input, i }.compact.sum
  end

  private

  def self.is_same_to_next_digit x, input, i
    x == input[(i+1)%input.size]
  end

  def self.is_same_to_half_around_digit x, input, i
    x == input[(i+ (input.size/2) )%input.size]
  end
end
