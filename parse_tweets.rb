require_relative 'user'


#Go through every line of of the txt file, store user as hash key and tweet(s) as values in a hash



all_users = User.from_file("sample_input.txt")

puts all_users

#compare each users tweets to the other and check to see if they are the same 

