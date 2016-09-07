# Get rid of duplicates without specifically removing any one value.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array << 11
array.unshift(0)

array.pop
array << 3

p array.uniq
