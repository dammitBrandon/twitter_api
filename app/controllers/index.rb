get '/' do
  erb :index
end

get '/:username' do
  @user = TwitterUser.find_by_username(params[:username])
  if @user.tweets.empty?
    puts "empty."
  else
    @user.fetch_tweets!
  end
  # @tweets = @user.tweets.limit(10)
  puts @user.tweets
end
