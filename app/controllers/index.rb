get '/' do
  erb :index
end

get '/:username' do
  @user = User.find_by_username(params[:username])
  #twitterShit = Twitter.user_timeline(@user.username, count: 10)
 # @user = User.new(
 #   name: twitterShit.first.user.name,
 #   username: twitterShit.first.user.screen_name,
 #   description: twitterShit.first.user.description
 #  )

 # twitterShit.each do |tweet| 
  

  
 #  @user.tweets.find_or_create_by(
 #    tweet_id: tweet.id,
 #    text: tweet.text, 
 #    favourites_count: tweet.user.favourites_count, 
 #    created_at: tweet.created_at)

 #  end
 @user.fetch_tweets!

  @user.save

 erb :user_tweet
end
