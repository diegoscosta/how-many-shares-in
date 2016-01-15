require_relative 'setup'

describe 'LinkedIn' do
	before do 
		VCR.use_cassette('linkedin') do
			@linkedin = HowManySharesIn::LinkedIn.new 'https://www.google.com/'
			@linkedin = @linkedin.shares
		end
	end

	it 'has 10029 shares' do
		@linkedin.must_equal 10029
	end
end