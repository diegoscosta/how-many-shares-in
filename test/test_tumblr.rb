require_relative 'setup'

describe 'Tumblr' do

	before do 
		VCR.use_cassette('tumblr') do 
			@tumblr = HowManySharesIn::Tumblr.new 'https://www.google.com/'
			@tumblr = @tumblr.shares
		end
	end

	it 'Has 39 shares' do
		@tumblr.must_equal 39
	end

end