require 'twitter'
# require_relative '../../config'



 Twitter.configure do |config|
   config.consumer_key = "hBRolSpFC8mW8JfL0QDDg"
  config.consumer_secret = "lDBy6KwLec8gX4oS338IG9BaPAJJHOvwPM0iH5a6Ef0"
   config.oauth_token = "376208330-1AoYnFgmNICvNLrOctZMZgax1GMuVARCCGRmhhy9"
 config.oauth_token_secret = "S26w6mwU6A45CZrm7aLqzBshWHFV0454KPYFekjyak"
 end

 # p Twitter.user_timeline("adayag", :count => 10)
