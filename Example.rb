# import all lib files
Dir["lib/**/*.rb"].each do |file|
	require_relative file
end

@pinterest = HowManySharesIn::Pinterest.new 'https://www.google.com/'

puts @pinterest.shares