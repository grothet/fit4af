class Player
	def initialize(name, health = 100)
		@name = name
		@health = health
	end 

	def say_hello
		"Ich bin #{@name} mit dem Wert #{@health}"
	end

	def to_s
	end

end

player1 =Player.new("Thomas", 120)
player2 =Player.new("Dennis")
puts player1.say_hello
puts player2.say_hello