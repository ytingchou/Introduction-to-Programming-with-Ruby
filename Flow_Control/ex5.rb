# Rewrite your program from exercise 3 using a case statement. Wrap the
# statement from exercise 3 in a method and wrap this new case statement
# in a method. Make sure they both still work.
def test_number(number)
  if number < 0
    puts "Please enter a number between 0 and 100!"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

def test_number_case_version(number)
  case
  when number < 0
    puts "Please enter a number between 0 and 100!"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

test_number(number)
test_number_case_version(number)

