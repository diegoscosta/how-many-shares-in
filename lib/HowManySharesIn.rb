require 'httparty'

module HowManySharesIn
	class HowManySharesIn
		
		def initialize(url)
			@url = url
		end

		protected
		def get
			HTTParty.get(URI.encode(@url), :verify => false).body
		end

		def parse_json(get_contents)
			JSON.parse(get_contents)
		end

	end
end