require './lib/inverse_captcha'

input = File.read('input').strip

print "Input is #{input}"
print "\n"
print "Next Digit Captcha Result is #{InverseCaptcha.next_digit_solve input}"
print "\n"
print "Half Around Digit Captcha Result is #{InverseCaptcha.half_around_digit_solve input}"
