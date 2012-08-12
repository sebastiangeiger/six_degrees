require_relative 'user'

describe User do
  describe "#to_string" do
    it "should show the twitter handle" do
      user = User.new('my_twitter_handle',[])
      user.to_s.should match /@my_twitter_handle/
    end
  end
  
end
