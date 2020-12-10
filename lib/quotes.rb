require 'json'
require 'twitter'
require 'net/http'
require 'open-uri'
require_relative 'tweet'

class Quotes
  @values = nil

  def initialize
    @values = make_the_request
  end

  def make_the_request
    url = 'https://type.fit/api/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    response
  end

  def random_quotes
    @values = @values.sample
    @values
  end
end
