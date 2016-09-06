# Using some of Ruby's built-in Hash methods, write a program that loops
# through a hash and prints all of the keys. Then write a program that does
# the same thing except printing the values. Finally, write a program that
# prints both.
hash = { apple: "iPhone", htc: "M10", samsung: "Galaxy" }

puts "##Print all of the keys##"
hash.each_key { |key| puts key }
puts "##Print all of the values##"
hash.each_value { |value| puts value }
puts "##Print both of key and value##"
hash.each { |key, value| puts "#{key} => #{value}" }
