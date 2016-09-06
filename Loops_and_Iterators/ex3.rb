# Use the each_with_index method to iterate through an array of your
# creation that prints each index and value of the array.
companies = [
  "Google",
  "Apple",
  "Samsung",
  "HTC",
  "Hawei"]

companies.each_with_index do |company, index|
  puts "companies[#{index}] = #{company}"
end
