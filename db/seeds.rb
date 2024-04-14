frog1 = Frog.create!(name: 'Froggy', species: 'Tree Frog', level: 1, health: 10, stamina: 10, max_health: 10,
                     max_stamina: 10, rarity: 'Common', image_url: '')

frog2 = Frog.create!(name: 'Toadle', species: 'Toad', level: 1, health: 10, stamina: 10, max_health: 10, max_stamina: 10,
                     rarity: 'Common', image_url: '')
puts 'created frogs'

Habit.create!(name: 'Take out bin', frequency: 1, count: 0, streak: 0, completed: false, frog_id: frog1.id)
Habit.create!(name: 'Do dishes', frequency: 1, count: 0, streak: 0, completed: false, frog_id: frog2.id)
puts 'created habits'

enemy1 = Enemy.create!(name: 'Giant Rat', resource_type: 'Wood', level: 1, health: 100, stamina: 100, max_health: 100,
                       max_stamina: 100, resource_qty: 1, image_url: '')

enemy2 = Enemy.create!(name: 'Goblin', resource_type: 'Wood', level: 3, health: 200, stamina: 200, max_health: 200,
                       max_stamina: 200, resource_qty: 2, image_url: '')

enemy3 = Enemy.create!(name: 'Spider Queen', resource_type: 'Iron', level: 5, health: 500, stamina: 500, max_health: 500,
                       max_stamina: 500, resource_qty: 2, image_url: '')
puts 'created enemies'

attacks = [
  { name: 'Tongue Strike', damage: 10, stamina_cost: 5, level_required: 1, element: 'Physical',
    image_url: 'https://example.com/tongue_strike.png' },
  { name: 'Toxic Spit', damage: 15, stamina_cost: 8, level_required: 3, element: 'Poison',
    image_url: 'https://example.com/toxic_spit.png' },
  { name: 'Water Blast', damage: 20, stamina_cost: 10, level_required: 5, element: 'Water',
    image_url: 'https://example.com/water_blast.png' },
  { name: 'Fireball', damage: 25, stamina_cost: 12, level_required: 7, element: 'Fire',
    image_url: 'https://example.com/fireball.png' },
  { name: 'Thunder Strike', damage: 20, stamina_cost: 15, level_required: 10, element: 'Electric', image_url: 'https://example.com/thunder_strike.png' }
]

attacks.each do |attack_params|
  attack = Attack.create!(attack_params)
  [frog1, frog2].each do |frog|
    frog.attacks << attack
  end
  [enemy1, enemy2, enemy3].each do |enemy|
    enemy.attacks << attack
  end
end
puts 'created attacks'
