

class DeviceFrequency


  def self.adjust input, current
    input.split(",")
        .map { |x| x.split("\n")}
        .flatten
        .map { |x| x.to_i }
        .compact.sum + current
  end


  private

end
