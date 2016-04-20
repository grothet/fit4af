p1 = Project.create(title: "Urlaubziel auswählen", description: "Im Reisebüro anrufen", start_date: "2016-04-24")
p2 = Project.create(title: "Scheidung einreichen", description: "P2 steht als Variable in der Seeddatei zur verfügung", start_date: "2016-05-24")

p1.validations.create(comment: "Neidisch", ranking: 5, username: "Theo")
p1.validations.create(comment: "Blöder Hammel", ranking: 2, username: "Peter")
p1.validations.create(comment: "Viel zu gefährlich überall Taliban", ranking: 3, username: "Bin laden")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
