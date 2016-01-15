module HowManySharesIn
	class Reddit < HowManySharesIn
		
		def initialize(url)
			super("http://www.reddit.com/api/info.json?&url=#{url}")
		end

		def shares
			ups = downs = 0
			
			self.parse_json(self.get)['data']['children'].each do |child|
				ups += child['data']['ups']
				downs += child['data']['downs']
			end

			ups - downs
		end
	
	end
end