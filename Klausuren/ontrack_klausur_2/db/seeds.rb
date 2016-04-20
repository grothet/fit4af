
p1 = Project.create(title: "E-Commerce-App", description: "Programmieren einer Webapplikation", start_date: "2016-04-06", max_hours: 200)
p1.employees.create(vorname: "Theo", nachname: "Sommer")
p1.employees.create(vorname: "Peter", nachname: "Pan")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
