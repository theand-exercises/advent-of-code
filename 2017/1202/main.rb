require './lib/checksum'

input = File.read('input').strip

print "Input is #{input}"
print "\n"
print "Checksum Result is #{Checksum.sum_of_minmaxdiff_by_sheet input}"
