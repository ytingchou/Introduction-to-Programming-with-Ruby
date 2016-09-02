# Ex3: Write a program that uses a hash to store a list of movie titles
#   with the year they came out. Then use the puts command to make your
#   program print out the year of each movie to the screen. The output
#   for your program should look something like this.
#
#   1975
#   2004
#   2013
#   2001
#   1981
movies = { "One Flew Over the Cuckoo's Nest": 1975,
           "Troy": 2004,
           "The Wolf of Wall Street": 2013,
           "Harry Potter and the Sorcerer's Stone": 2001,
           "Mad Max 2": 1981 }

print "Use Hase#[]:\n"

puts movies[:"One Flew Over the Cuckoo's Nest"]
puts movies[:"Troy"]
puts movies[:"The Wolf of Wall Street"]
puts movies[:"Harry Potter and the Sorcerer's Stone"]
puts movies[:"Mad Max 2"]

print "\nUse Hase#each_value:\n"

# use hash#each_value
movies.each_value { |value| puts value }
