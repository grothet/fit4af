# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create(:name => "Film schauen", :image_file => "batman.jpg", :capacity => 5, :description => "Bati und seine Kumpanen", :location => "Gotham City", :price => 1000, :start_at => "01.01.2017")