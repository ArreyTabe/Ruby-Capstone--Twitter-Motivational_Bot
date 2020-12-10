require 'json'
require 'twitter'
require 'net/http'
require 'open-uri'
require_relative 'tweets'

class Quotes
  @values = nil

  def initialize
    @values = make_the_request
  end

  def make_the_request
    url = 'https://type.fit/api/quotes'
    uri = URI(url)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  def random_quotes
    @values = @values.sample
    @values
  end
end
