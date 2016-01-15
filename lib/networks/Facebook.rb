module HowManySharesIn
	class Facebook < HowManySharesIn
		
		def initialize(url)
			super("http://api.facebook.com/restserver.php?method=links.getStats&format=json&urls=#{url}")
		end
		
		def shares
			shares = self.parse_json(self.get)
			shares[0]['total_count']
		end
	
	end
end