require 'securerandom'

module Hex

	def self.generate_id
	  random_string = SecureRandom.hex
	  "#{URI.parse((random_string[0,6]))}"
	end
	
end