require_relative 'setup'

describe 'GooglePlus' do 
	before do
		VCR.use_cassette('googleplus') do 
			@googleplus = HowManySharesIn::GooglePlus.new 'https://www.google.com/'
			@googleplus = @googleplus.shares
		end
	end

	it 'Has one share' do
		@googleplus.must_equal 1
	end
end