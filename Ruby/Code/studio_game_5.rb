jahreszeiten = ["Sommer", "Herbst", "Winter"] #Array erzeugen
jahreszeiten.length # jahreszeiten.count
jahreszeiten[2] # Ausgabe des dritten Eintrages
jahreszeiten.push("Frühjahr") #Eintrag Hinzufügen
jahreszeiten.pop # jahreszeite.delete_at(3) #Löscht den 4ten Eintrag
jahreszeiten.join(" und ") #Ausgabe aller Inhalte mit dem " und " dazwischen
jahreszeiten.shuffle #zufällige anordnung aller Inhalte shuffle = Mischen

player = %w[player1 player2 player3] #Inhalte in das Array eintragen
#player.each do |int| puts int end #Ausgabe aller Inhalte mit Zählschleife

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

player1 = Player.new("Peter", 100)
player2 = Player.new("Dennis", 120)
player3 = Player.new("Holger",150)
player = [player1, player2, player3]
puts "Anzahal Spieler: #{player.count}"
player.each {|player| 
		puts player}

