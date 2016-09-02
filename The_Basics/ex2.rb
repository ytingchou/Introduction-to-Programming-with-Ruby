# Ex2: Use the modulo operator, division, or a combination of
#   both to take a 4 digit number and find the digit in the:
#   1) thousands place
#   2) hundreds place
#   3) tens place
#   4) ones place
four_digit_number = 4321
puts "four_digit_number: #{four_digit_number}"

thousands = four_digit_number / 1000
puts "thousands: #{thousands}"

hundreds = four_digit_number % 1000 / 100
puts "hundreds: #{hundreds}"

tens = four_digit_number % 100 / 10
puts "tens: #{tens}"

ones = four_digit_number % 10
puts "ones: #{ones}"
