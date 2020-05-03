# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Material.destroy_all
Exercise.destroy_all
puts "DB cleaned"

game1 = Game.create!(name: "Sons & Mots")
puts "Created game 1"


materials = ('a'..'z').to_a
materials.each do |material|
  Material.create!({
    name: material,
    category: "Letter",
    game: game1
  })
end
puts "Created materials for game 1"

(1..3).each do |n|
  5.times do
    Exercise.create!({
      word: Faker::Lorem.word,
      level: n,
      game: game1,
      done: false
    })
  end
end
puts "Created exercises for game 1"
