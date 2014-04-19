require 'date'

class WeatherController < ApplicationController

  	layout false

  def index
  	@array = [1,2,3,4,5]
#  	fwatemp = nil
	
  	fwatemp = WeatherInFortWayne.last
  	converted_time = Time.at(fwatemp.SSBOE).in_time_zone("Eastern Time (US & Canada)")
  	@fwa_out_temp = "The temperature in #{fwatemp.Location} is #{fwatemp.TemperatureC}C."
  	@fwa_in_temp = "The temperature inside the house is #{fwatemp.HouseTemperatureC}C."
  	@fwa_updated_temp = "Updated at #{converted_time}."

  end

  def hello
  end
  def other_hello
  	redirect_to(:controller => 'weather', :action => 'index')
  end
end
