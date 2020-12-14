require 'open-uri'
require 'nokogiri'
require 'json'
require 'twitter'
require_relative '../lib/tweet'

class Parsed
  def initialize
    @url = 'https://www.thecoderpedia.com/blog/programming-quotes/'
    @html = URI.open(@url)
    @doc = Nokogiri::HTML(@html)
    @quotes = obtain_quotes
  end

  def sub_key_val(quote_text)
    quote_text.chars.each_with_index do |k, ind|
      return ind if k == '.'
    end
  end

  def obtain_quotes()
    quotes = []
    i = 6
    while i <= 21
      quote_text = @doc.xpath("//*[@id=\"post-1211\"]/div[2]/div[1]/div/div[1]/p[#{i}]/text()").text

      my_hash = {}
      my_hash['num'] = quote_text[0..sub_key_val(quote_text)].to_i
      end_of_str = quote_text[(sub_key_val(quote_text) + 1)..(quote_text.length - 1)]
      my_hash['content'] = end_of_str

      quotes.push(my_hash)

      i += 1
    end

    # collected_quotes = JSON.pretty_generate(quotes)

    random_quote_key = rand(quotes[0]['num']..quotes[quotes.length - 1]['num'])

    @random_quote_u = quotes.select { |x| x['num'] == random_quote_key }.first['content']
    # puts random_quote_u
   
  end
end
