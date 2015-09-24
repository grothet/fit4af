health1=60
health2=125
health3=100
health4=90

moe="Moe"
curly="Curly"
larry="Larry"
shemp="Shemp"




puts "#{larry}'s health is #{health1*3/9}"
puts "#{larry}'s health is #{health1*3/9.0}"

puts "___________________________________________________\n\n"

puts "#{larry} has a health of #{health1}"
puts "#{curly} has a health of #{health2}"
puts "#{moe} has a health of #{health3}.".center(40, "*")
puts "#{moe} has a health of #{health3}.".center(40, "*")
puts "#{shemp.ljust(30,'.')} #{health4} health"
puts "#{shemp.ljust(30,'.')} #{health4} health"
puts "Players: \n\t#{larry} \n\t#{curly} \n\t#{moe}"
puts "The Game started on #{Time.new}"