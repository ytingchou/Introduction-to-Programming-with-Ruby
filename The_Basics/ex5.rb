# Ex5: Write a program that outputs the factorial of
#   the numbers 5, 6, 7, and 8.
def factorial(number)
  number == 0 ? 1 : number * factorial(number - 1)
end

puts "factorial(5) : #{factorial(5)}"
puts "factorial(6) : #{factorial(6)}"
puts "factorial(7) : #{factorial(7)}"
puts "factorial(8) : #{factorial(8)}"
