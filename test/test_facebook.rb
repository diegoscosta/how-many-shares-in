require_relative 'setup'

describe 'Facebook' do 
	
	before do
		VCR.use_cassette('facebook') do
			@facebook = HowManySharesIn::Facebook.new 'https://www.google.com/'
			@facebook = @facebook.shares
		end
	end

	it 'Has 1055525 shares' do
		@facebook.must_equal 1055525
	end

end