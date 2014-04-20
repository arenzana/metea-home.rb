require 'date'

class WeatherInFortWayne < ActiveRecord::Base
	self.table_name = "current_weather_view_FWA"
	self.primary_key = :KeyId

	#Scopes

	scope :allSince, -> (ssboearg) {
		where("SSBOE >= ?", "#{ssboearg}")
	}

	scope :lastTwelveHours, -> () {
		where("SSBOE >= ?", 12.hour.ago.to_i)
	}

end
