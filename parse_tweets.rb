


class User
  attr_accessor :username, :tweets, :first_degree, :second_degree

  def initialize(user_name, tweets)

    @user_name = user_name
    @tweets = tweets

    @user_details = {}
  end 

  def user_name
  	@user_details[:user] = @user_name
  end 

  def tweets
  	@user_details[:tweets] = @tweets
  end

  def first_degree(another_user)
    @first_degree_connections = []
    #this method will compare the tweets from .self to another_user.tweets
     if self.tweets #contain a tweet @ the another_user and the another_user's tweets contain a tweet @ self
       @first_degree_connections << another_user.user_name 

    #then store that user in an array called 
  end 

   def second_degree
    #this method will compare .self's first_degree_connections to it's first degree connections 
    #all the first_degree_connections of the other users that the current instance does not have 
    # as a first degree connection will be put into a second_degree_connection array 
  end 

end 


#compare each users tweets to the other and check to see if they are the same 










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



