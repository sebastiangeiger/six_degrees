require 'user'


#Go through every line of of the txt file, store user as hash key and tweet(s) as values in a hash



tweets = File.open("sample_input.txt", "r")

users = {}

tweets.each do |line|
  user_tweet = line.split(":")
  #split the line at : to get the username and the tweet 
  #create the hash that holds the username as key and tweets in value
  #
  hash_key = user_tweet[0]
  hash_value = user_tweet[1]

  #Build my hash of users and tweets
  if users[hash_key]
  	users[hash_key] << hash_value
  else
  	users[hash_key] = [hash_value]
  end
end



all_users = [] #create an array to hold all the instances of the User class to be used later 

#break the hash key and value up, create a new User class and pass the key and value to them
users.each do |key, value|
 user = User.new(key, value)
 all_users << user
 #puts user.user_name # need to figure out how to print out the users in alpabetical order 
 #puts user.tweets
end 

puts all_users


#compare each users tweets to the other and check to see if they are the same 

