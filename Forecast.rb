require "barometer"

def get_weather(location)
	@barometer = Barometer.new(location)
	@weather = @barometer.measure
end

def current_weather(weather)
	@weather = weather
	@temp = @weather.current.temperature.f
	@condition = @weather.current.icon
	
case 
when @condition.match("sun")
condition = "sunny"
when @condition.match("cloud")
condition = "cloudy"
when @condition.match("clear")
condition = "clear"
when @condition.match("rain")
condition = "rainy"
when @condition.match("fog")
condition = "foggy"
when @condition.match("snow")
condition = "snowy"
end

return "It is currently #{@temp} degrees and #{condition}."

end

def forecasting(weather) 
@forecast = @weather.forecast
@forecast_a = []

tomorrow = Time.now.strftime("%d").to_i + 1

@forecast.each do |x|
	
case 
when x.icon.match("sun")
condition = "sunny"
when  x.icon.match("cloud")
condition = "cloudy"
when  x.icon.match("clear")
condition = "clear"
when  x.icon.match("rain")
condition = "rainy"
when  x.icon.match("fog")
condition = "foggy"
when  x.icon.match("snow")
condition = "snowy"
end

day = x.starts_at.day
if day == tomorrow
weekday = "Tomorrow"
else weekday = x.starts_at.strftime("%A")
end

@forecast_a.push("#{weekday} is forecasted to be #{condition} with a high of #{x.high.f} and a low of #{x.low.f}.")

end

return @forecast_a
end


puts "What is your location (city or zipcode)?"

weather = get_weather(gets.chomp)

puts current_weather(weather)

forecast = forecasting(weather)
puts "The forecast for the rest of the week is:"
forecast.each {|x| puts x}