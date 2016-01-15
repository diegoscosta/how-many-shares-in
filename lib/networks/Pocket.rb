module HowManySharesIn
	class Pocket < HowManySharesIn
		
		def initialize(url)
			super("https://widgets.getpocket.com/v1/button?count=vertical&url=#{url}")
		end

		def shares
			shares = /id="cnt">([\d]+)/.match(self.get)
			(shares) ? shares[1].to_i : 0
		end
	
	end
end