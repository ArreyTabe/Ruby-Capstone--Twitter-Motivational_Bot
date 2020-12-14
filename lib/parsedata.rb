require 'open-uri'
require 'nokogiri'
require 'json'
require_relative '../lib/tweet'


class Parsed
  def initialize
    url = 'https://www.thecoderpedia.com/blog/programming-quotes/'
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
    quotes = []
    doc.css('p').each do |p|
      # while p.next.is_Numeric?
        quote = p
        puts quotes
      # end

      quotes.push(quote)
    end
    puts JSON.pretty_generate(quotes)
  end
end
