class Player
	def initialize(name, health = 100)
		@name = name
		@health = health
	end 

	def say_hello
		"Ich bin #{@name} mit dem Wert #{@health}"
	end

	def blam
		@health = @health - 10
		puts "#{@name} got blam."
	end
	
	def woot
	  @health = @health + 10 
		puts "#{@name} got wooted."
	end

	def to_s
		say_hello
	end

end

player1 =Player.new("Thomas", 100)
player2 =Player.new("Dennis")

puts player1
puts player2

player1.woot
puts player1

player2.blam
puts player2