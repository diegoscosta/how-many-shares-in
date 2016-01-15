module HowManySharesIn
	class Tumblr < HowManySharesIn
		
		def initialize(url)
			super("http://api.tumblr.com/v2/share/stats?url=#{url}")
		end
		
		def shares
			shares = self.parse_json(self.get)
			shares['response']['note_count']
		end
	
	end
end