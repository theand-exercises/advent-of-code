require './lib/device_frequency'

input = File.read('input.txt').strip

print "Addjusted frequency is #{DeviceFrequency.adjust input, 0}"
#585
