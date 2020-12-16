require 'twitter'
require 'yaml'
require 'json'
require 'dotenv'
require 'httparty'
require_relative '../lib/tweet'

Dotenv.load

describe Tweet do
  let(:tweet) { Tweet.new(ENV) }

  describe '#obtain_quotes' do
    context 'given a url, returns messages from the path of specifid' do
      it 'returns a quote' do
        expect(tweet.obtain_quotes).to_not eq(Numeric)
      end
    end

    it 'returns a random quote' do
      expect(tweet.obtain_quotes.class).to eq(String)
    end
  end

  describe '#sub_key_val' do
    it 'returns a index for when key is .' do
      expect(tweet.sub_key_val(@quote_text)).to_not eq(0)
    end

    it 'returns a index for when key is .' do
      expect(tweet.sub_key_val(@quote_text).class).to eq(Integer)
    end
  end
end
