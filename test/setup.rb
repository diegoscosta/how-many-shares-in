require 'minitest/autorun'
require 'vcr'

Dir["lib/**/*.rb"].each do |file|
	require_relative '../' + file
end

VCR.configure do |config|
  config.cassette_library_dir = "test/fixtures/cassettes"
  config.hook_into :webmock
end