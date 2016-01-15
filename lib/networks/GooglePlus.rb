module HowManySharesIn
	class GooglePlus < HowManySharesIn
		
		def initialize(url)
			super("https://plusone.google.com/_/+1/fastbutton?url=#{url}")
		end
		
		def shares
			shares = /window\.__SSR = {c: ([\d]+)/.match(self.get)
			(shares) ? shares[1].to_i : 0
		end
	
	end
end