module HowManySharesIn
	class Vkontakte < HowManySharesIn
		
		def initialize(url)
			super("http://vk.com/share.php?act=count&url=#{url}")
		end

		def shares
			shares = /count\(0, ([\d]+)/.match(self.get)
			(shares) ? shares[1].to_i : 0
		end
	
	end
end