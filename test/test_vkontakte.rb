require_relative 'setup'

describe 'Vkontakte' do

	before do 
		VCR.use_cassette('vkontakte') do 
			@vkontakte = HowManySharesIn::Vkontakte.new 'https://www.google.com/'
			@vkontakte = @vkontakte.shares
		end
	end

	it 'Has 1683 shares' do
		@vkontakte.must_equal 1683
	end

end