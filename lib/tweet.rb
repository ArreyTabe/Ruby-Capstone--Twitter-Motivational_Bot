require 'twitter'
require_relative '../lib/parsedata'


class Tweet
  def initialize(env)
    @ENV = env
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = @ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = @ENV['TWITTER_CONSUMER_SECRET']
      config.access_token = @ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = @ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end
    # @client.update('seems goood')
    client.update('try harder')
  
  end
end
