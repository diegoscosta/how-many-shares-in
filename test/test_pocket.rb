require_relative 'setup'

describe 'Pocket' do
	before do 
		VCR.use_cassette('pocket') do
			@pocket = HowManySharesIn::Pocket.new 'https://www.google.com/'
			@pocket = @pocket.shares
		end
	end

	it 'has 65849 shares' do
		@pocket.must_equal 65849
	end
end