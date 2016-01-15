module HowManySharesIn
	class LinkedIn < HowManySharesIn
		
		def initialize(url)
			super("https://www.linkedin.com/countserv/count/share?format=json&url=#{url}")
		end
		
		def shares
			self.parse_json(self.get)['count']
		end
	
	end
end