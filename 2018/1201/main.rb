require './lib/device_frequency'

input = File.read('input.txt').strip

print "Adjusted frequency is #{DeviceFrequency.adjust input, 0}\n"
#585

print "repeating frequency is #{DeviceFrequency.find_first_freq_reached_twice input, 0}"
#83173
