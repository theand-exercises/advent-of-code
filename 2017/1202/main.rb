require './lib/checksum'

input = File.read('input').strip

print "Input is #{input}"
print "\n"
print "sum_of_diff_minmax_by_sheet is #{Checksum.sum_of_diff_minmax_by_sheet input}"
print "\n"
print "sum_of_evenly_divisible_by_sheet is #{Checksum.sum_of_evenly_divisible_by_sheet input}"
