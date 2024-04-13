# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

frog1 = Frog.create!(name: 'Froggy', species: 'Tree Frog', level: 1, health: 10, stamina: 10, max_health: 10,
                     max_stamina: 10, rarity: 'Common', image_url: '')

frog2 = Frog.create!(name: 'Toadle', species: 'Toad', level: 1, health: 10, stamina: 10, max_health: 10, max_stamina: 10,
                     rarity: 'Common', image_url: '')
puts 'created frogs'

Habit.create!(name: 'Take out bin', frequency: 1, count: 0, streak: 0, completed: false, frog_id: frog1.id)
Habit.create!(name: 'Do dishes', frequency: 1, count: 0, streak: 0, completed: false, frog_id: frog2.id)
puts 'created habits'

Enemy.create!(name: 'Giant Rat', resource_type: 'Wood', level: 1, health: 100, stamina: 100, max_health: 100,
              max_stamina: 100, resource_qty: 1, image_url: '')

Enemy.create!(name: 'Goblin', resource_type: 'Wood', level: 3, health: 200, stamina: 200, max_health: 200,
              max_stamina: 200, resource_qty: 2, image_url: '')

Enemy.create!(name: 'Spider Queen', resource_type: 'Iron', level: 5, health: 500, stamina: 500, max_health: 500,
              max_stamina: 500, resource_qty: 2, image_url: '')
puts 'created enemies'
