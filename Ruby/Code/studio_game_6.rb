class Game

	def initialize(title)
		@title = title
		@player = []
	end

	def add_player(name)
		@player << name
	end

	def play
		puts "There are #{@player.count} players in #{@title}:\n"
		@player.each do |player|
			player.say_hello
		end
		@player.each do |player|
		player.blam
		player.woot
		player.woot
		player.say_hello
		end
	end
end

class Player
	attr_reader :health
	attr_accessor :name

	def initialize(name, health = 100)
		@name = name
		@health = health
	end 

	def say_hello
		puts "I'm #{@name} with a health of #{@health} and a score of #{score}"
	end

	def blam
		@health = @health - 10
		puts "#{@name} got blammed!"
	end
	
	def woot
	  @health = @health + 15 
		puts "#{@name} got w00ted!"
	end

	def score
		@health + @name.length #virtuelle Variable d.h. die Instanzvariable
	end													#@health wird nicht geändert!


	def to_s
		"Der Spieler #{@name} hat einen Score von #{score}"
	end

end

player1 = Player.new("Moe", 100)
player2 = Player.new("Larry", 60)
player3 = Player.new("Curly", 125)
game1 = Game.new("Knuckleheads")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play
