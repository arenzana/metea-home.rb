require 'date'

class WeatherController < ApplicationController

  	layout false

  def index
    @fwa_temp_data_array = WeatherInFortWayne.lastTwelveHours
  	converted_time = Time.at(@fwa_temp_data_array.last.SSBOE).in_time_zone("Eastern Time (US & Canada)")
  	@fwa_out_temp = "The temperature in #{@fwa_temp_data_array.last.Location} is #{@fwa_temp_data_array.last.TemperatureC}C."
  	@fwa_in_temp = "The temperature inside the house is #{@fwa_temp_data_array.last.HouseTemperatureC}C."
  	@fwa_updated_temp = "Updated at #{converted_time}."
  end

  def hello
  end
  def other_hello
  	redirect_to(:controller => 'weather', :action => 'index')
  end
end
