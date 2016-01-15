module HowManySharesIn
	class Pinterest < HowManySharesIn
		
		def initialize(url)
			super("http://api.pinterest.com/v1/urls/count.json?url=#{url}")
		end
		
		def shares
			shares = self.get.gsub!("receiveCount(","").gsub!(")","")
			self.parse_json(shares)['count']
		end
	
	end
end