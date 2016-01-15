require_relative 'setup'

describe 'Twitter' do

	before do 
		VCR.use_cassette('twitter') do 
			@twitter = HowManySharesIn::Twitter.new 'https://www.google.com/'
			@twitter = @twitter.shares
		end
	end

	it 'Has 0 shares' do
		@twitter.must_equal 0
	end

end