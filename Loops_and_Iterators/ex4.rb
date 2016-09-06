# Write a method that counts down to zero using recursion
def countdown(number)
  if number < 1
    puts number
  else
    puts number
    countdown(number - 1)
  end
end

countdown(1)
countdown(10)
countdown(-1)
