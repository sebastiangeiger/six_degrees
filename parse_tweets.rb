require 'rubygems'
require 'awesome_print'


class User

  @@instance_collector = []

  def initiliaze(user_name, tweets)
    @@instance_collector << self

    @user_name = user_name
    @tweets = tweets

    @user_details = {}
  end 

  def self.all_offspring #keeps track of how many classes of itself User has
    @@instance_collector
  end

  def user_name
  	@user_details[:user] = @user_name
  end 

  def tweets
  	@user_details[:tweets] = @tweets
  end

end 













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


#break the hash key and value up, create a new User class and pass the key and value to them

users.each do |key, value|
 user = User.new(key, value)
 puts user.user_name
end 

ap user.all_offspring

