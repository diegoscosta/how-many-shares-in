require_relative 'setup'

describe 'Delicious' do 
	
	before do
		VCR.use_cassette('delicious') do
			@delicious = HowManySharesIn::Delicious.new 'https://www.google.com/'
			@delicious = @delicious.shares
		end
	end

	it 'No shares' do
		@delicious.must_equal 0
	end

end