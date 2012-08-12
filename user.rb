  class User
    attr_accessor :user_name, :tweets, :first_degree, :second_degree

    def initialize(user_name)

      @user_name = user_name
      @tweets = []
    end 

    def first_degree(another_user)
      #TODO: mentioning(another_user) and mentioned_by(another_user)
    end

    def to_s
      "User @#{user_name}"
    end

    def add_tweet(tweets)
      @tweets << tweets
    end 

    def mentioned_by(another_user)
      true
    end 

    def mentioning(another_user)
      true
    end 

    def User.from_file(file)
      tweets = File.open("sample_input.txt", "r")

      all_users = []

      tweets.each do |line|
        current_user = nil
        user_tweet = line.split(":")
        #split the line at : to get the username and the tweet 
        #create the hash that holds the username as key and tweets in value
        #
        twitter_handle = user_tweet[0]
        tweet_body = user_tweet[1]
        # FIXME: Long term vision: current_user = all_users.find_or_create(twitter_handle)
        current_user = all_users.select{ |user| user.user_name == twitter_handle }.first
        if current_user.nil?
          current_user = User.new(twitter_handle)
          all_users << current_user
        end
        current_user.add_tweet(tweet_body)
      end
      #TODO: Build mentioning relationships
      User.establish_mention_relationships(all_users)
      return all_users
    end

    def User.establish_mention_relationships(list_of_users)
      #TODO!
    end
end 
