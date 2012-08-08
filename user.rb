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
  end

  def second_degree
    #this method will compare .self's first_degree_connections to it's first degree connections 
    #all the first_degree_connections of the other users that the current instance does not have 
    # as a first degree connection will be put into a second_degree_connection array 
  end 

end 
