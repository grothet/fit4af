class Player
	attr_reader :health
	attr_accessor :name

	def initialize(name, health = 100)
		@name = name
		@health = health
	end 

	def say_hello
		"Ich bin #{@name} mit dem Wert #{@health}"
	end

	def blam
		@health = @health - 10
		puts "#{@name} got blamed."
	end
	
	def woot
	  @health = @health + 10 
		puts "#{@name} got wooted."
	end

	def score
		@health + @name.length #virtuelle Variable d.h. die Instanzvariable
	end													#@health wird nicht geändert!


	def to_s
		"Der Spieler #{@name} hat einen Score von #{score}"
	end

end

player1 = Player.new("1234567890", 100)
player2 = Player.new("Dennis")

puts player1.health
puts player1
