def say_hello(name, health = 0)
	"Ich bin #{name} mit dem Wert #{health} um #{time}"
end

def time
	Time.new.strftime("%R")
end


puts say_hello("Ludwig", 40)
puts say_hello("Dennis", 50)
puts say_hello("Thomas")
