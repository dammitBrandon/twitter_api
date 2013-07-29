class Tweet < ActiveRecord::Base
  attr_reader :tweets
  
  def initialize
    tweets = []
  end
  
end
