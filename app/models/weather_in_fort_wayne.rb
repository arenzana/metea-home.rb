class WeatherInFortWayne < ActiveRecord::Base
	self.table_name = "current_weather_view_FWA"
	self.primary_key = :KeyId


	#Scopes

	scope :allSince, lambda {|ssboearg|
		where("SSBOE >= ?","#{ssboearg}")
	}

	# attr_accessor :KeyID
	# attr_accessor :WeatherLocation
	# attr_accessor :TimeInServer
end
