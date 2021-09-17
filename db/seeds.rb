# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do |i|
  Category.create(
    name: Faker::Creature::Animal.name,
    private: [true,false].sample)
  Subcategory.create(
    name: Faker::Creature::Animal.name,
    category_id:rand(1..19))
  Marker.create(
    name: Faker::Creature::Animal.name,
    url: "https://es.wikipedia.org/wiki/Fauna_de_Venezuela",
    subcategory_id:rand(1..19))
  Type.create(
    name: Faker::Creature::Animal.name,
    marker_id: rand(1..19))
end