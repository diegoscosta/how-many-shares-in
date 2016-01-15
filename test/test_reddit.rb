require_relative 'setup'

describe 'Reddit' do
	before do 
		VCR.use_cassette('reddit') do
			@reddit = HowManySharesIn::Reddit.new 'https://www.google.com/'
			@reddit = @reddit.shares
		end
	end

	it 'has 376 shares' do
		@reddit.must_equal 376
	end
end