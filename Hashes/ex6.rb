# Given the array...
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
#
# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a
# different order. Your output should look something like this:
#
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
#
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

grouped_result = {}

words.each do |word|
  key = word.split('').sort.join
  if grouped_result.has_key?(key)
    grouped_result[key].push(word)
  else
    grouped_result[key] = [word]
  end
end

# print result
grouped_result.each do |key, value|
  p value
end
