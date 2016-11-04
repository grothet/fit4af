# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#users
User.create(:name => "Admin", :password_digest => "Admin", :admin => true, :sifa => true, :verantwortlich => true)
User.create(:name => "Anonym", :password_digest => "Anonym")

#places
Place.create(:kostenstelle => 000, :bezeichnung => "Anderer")

#divisions
Division.create(:bezeichnung => "Keine")

#categories
Category.create(:titel => "Andere", :bezeichnung => "Keine passende Kategorie")


