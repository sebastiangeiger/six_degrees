require_relative 'user'

describe User do
  describe "#to_s" do
    it "should show the twitter handle" do
      user = User.new('my_twitter_handle')
      user.to_s.should match /@my_twitter_handle/
    end
  end
  describe ".from_file" do
  	it "should have 6 users when reading from sample input" do
  		list_of_users = User.from_file("sample_input.txt")
  		list_of_users.size.should == 6
  	end
    it "should have 6 users when reading from sample input" do
      list_of_users = User.from_file("sample_input.txt")
      list_of_users.each do |user|
        user.should be_a(User)
      end
    end
    it "should return 3 tweets for @alberta" do
      list_of_users = User.from_file("sample_input.txt")
      alberta = list_of_users.first
      alberta.user_name.should == "alberta"
      alberta.tweets.size.should == 3
    end
  end
  describe "#mentioning" do
    it "should inlcude bob for alberta" do
      list_of_users = User.from_file("sample_input.txt")
      alberta = list_of_users[0]
      alberta.user_name.should == 'alberta'
      bob = list_of_users[1]
      bob.user_name.should == 'bob'
      christie = list_of_users[2]
      christie.user_name.should == 'christie'
      duncan = list_of_users[3]
      duncan.user_name.should == 'duncan'
      emily = list_of_users[4]
      emily.user_name.should == 'emily'

      alberta.mentioning(bob).should == true
      alberta.mentioning(christie).should == true
      alberta.mentioning(duncan).should == true
      alberta.mentioning(emily).should == false

    end
  end
  describe "#mentioned_by" do
    it "should inlcude bob for alberta" do
      list_of_users = User.from_file("sample_input.txt")
      alberta = list_of_users[0]
      alberta.user_name.should == 'alberta'
      bob = list_of_users[1]
      bob.user_name.should == 'bob'
      christie = list_of_users[2]
      christie.user_name.should == 'christie'
      emily = list_of_users[4]
      emily.user_name.should == 'emily'

      alberta.mentioned_by(bob).should == true
      alberta.mentioned_by(christie).should == true
      alberta.mentioned_by(emily).should == false
    end
  end
end
