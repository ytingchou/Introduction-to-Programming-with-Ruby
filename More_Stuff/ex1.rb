# Write a program that checks if the sequence of characters "lab" exists in
# the following strings. If it does exist, print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"
#
def exist_lab?(string)
  if string =~ /lab/
    puts string
  end
end

exist_lab?("laboratory")
exist_lab?("experiment")
exist_lab?("Pans Labyrinth")
exist_lab?("elaborate")
exist_lab?("polar bear")
