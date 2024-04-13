# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Frog.create(name: 'Froggy', species: 'Tree Frog', level: 1, health: 100, stamina: 100, max_health: 100,
            max_stamina: 100, rarity: 'Common', image_url: '')

Frog.create(name: 'Toadle', species: 'Toad', level: 1, health: 100, stamina: 100, max_health: 100, max_stamina: 100,
            rarity: 'Common', image_url: '')

Habit.create(name: 'Take out bin', frequency: 1, count: 0, streak: 0, completed: false, frog_id: 1)
Habit.create(name: 'Do dishes', frequency: 1, count: 0, streak: 0, completed: false, frog_id: 2)
