class User < ActiveRecord::Base
  # attr_accessor :tweets
  has_many  :tweets

def fetch_tweets!
    tweets = []
  if self.tweets.empty?

    tweets = Twitter.user_timeline(self.username)
    tweets.each do |tweet|
    self.tweets.build( 
      tweet_id: tweet.id,
      text: tweet.text, 
      favourites_count: tweet.user.favourites_count, 
      created_at: tweet.created_at)
    end
    
   

  else
    tweets = Twitter.user_timeline(self.username, since_id: self.tweets.first.tweet_id)
    tweets.each do |tweet|
      self.tweets.build( 
        tweet_id: tweet.id,
        text: tweet.text, 
        favourites_count: tweet.user.favourites_count, 
        created_at: tweet.created_at)
    end
  end    
end


# def sortTweets
#   @tweets.each {|tweetObj| Tweet.new(tweetObj)}
# end
end
