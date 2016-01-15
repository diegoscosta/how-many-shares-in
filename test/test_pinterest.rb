require_relative 'setup'

describe 'Pinterest' do
	before do 
		VCR.use_cassette('pinterest') do
			@pinterest = HowManySharesIn::Pinterest.new 'https://www.google.com/'
			@pinterest = @pinterest.shares
		end
	end

	it 'has 1359918 shares' do
		@pinterest.must_equal 1359918
	end
end