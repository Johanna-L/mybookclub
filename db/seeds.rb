# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting existing readers, books, exchanges"
Person.destroy_all

puts "Creating readers"
johanna = Person.new({
  name: "Johanna",
  admin: true
})
johanna.save!

melodie = Person.new({
  name: "Mélodie"
})
melodie.save!

helene = Person.new({
  name: "Maman"
})
helene.save!

charlotte = Person.new({
  name: "Cha"
})
charlotte.save!

puts "Creating books"
sorcieres = Book.new({
  title: "Sorcières",
  author: "Mona Chollet",
  available: false
})
sorcieres.owner = johanna
sorcieres.save!

pp = Book.new({
  title: "Orgueil et Préjugés",
  author: "Jane Austen"
})
pp.owner = charlotte
pp.save!

puts "Creating exchanges"
loan = Exchange.new
loan.person = melodie
loan.book = sorcieres
loan.ongoing = true
loan.save!

borrowing = Exchange.new
borrowing.person = johanna
borrowing.book = pp
borrowing.ongoing = false
borrowing.save!

puts "Seed finalized"
