def say_hello(name, health = 0)
	var = "Ich bin #{name} mit dem Wert #{health} um #{time}"
end

def time
	current_time = Time.new
	current_weekday = current_time.strftime("%R")
end


puts say_hello("Ludwig", 40)
puts say_hello("Dennis", 50)
puts say_hello("Thomas")
