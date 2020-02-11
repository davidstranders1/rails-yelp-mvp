# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'David Kitchen',
    address:      '95 Sokolov St, Tel Aviv',
    category:         'Belgian'
  },
  {
    name:         'David Tacos',
    address:      '100 Rue de la Tour, Paris',
    category:         'French'
  },
  {
    name:         'David Pizza',
    address:      '500 Via Espagna, Rome',
    category:         'Italian'
  },
  {
    name:         'David Sushi',
    address:      '15 Yamaha Street, Tokyo',
    category:         'Japanese'
  },
  {
    name:         'David Dim Sum',
    category:         'Chinese',
    address:      '15 Yamaha Street, Tokyo'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
puts "You have now #{Restaurant.count} restaurants!"
