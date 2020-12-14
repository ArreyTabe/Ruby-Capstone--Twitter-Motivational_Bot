require_relative '../lib/tweet'

describe Tweet do
  describe '#sub_key_val' do
    let(:tweet) { Tweet.new([@ENV]) }
    let(:request) { tweet.sub_key_val(quote_text) }
    it 'returns an integer' do
      expect(request.class).to eq(Numeric)
    end
  end
  #   describe '#sub_key_val' do
  #     it 'does not return nil' do
  #       expect(tweet.sub_key_val).not_to be_nil
  #     end
  #   end

  describe '#obtain_quotes' do
    let(:tweet) { Tweet.new }
    it 'returns an array' do
      expect(tweet.obtain_quotes).to eq(String)
    end
  end
end
