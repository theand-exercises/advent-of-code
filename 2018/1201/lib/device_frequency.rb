

class DeviceFrequency


  def self.adjust input, current
    input.split(",")
      .map { |x| x.split("\n")}
      .flatten
      .map { |x| x.to_i }
      .compact.sum + current
  end

  def self.find_first_freq_reached_twice input, current
    reached = { 0 => true}
    answer = nil
    begin
      input.split(",")
        .map { |x| x.split("\n")}
        .flatten
        .cycle
        .each do |x|
          current = current + x.to_i
          if reached.has_key? current and answer.nil?
            answer = current
            raise "answer found"
          else
            reached[current] = true
          end
      end
    rescue
      print "answer found"
    end
    answer
  end

  private

end
