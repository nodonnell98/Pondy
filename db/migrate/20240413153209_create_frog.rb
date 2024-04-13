class CreateFrog < ActiveRecord::Migration[7.1]
  def change
    create_table :frogs do |t|
      t.string :name
      t.string :species
      t.integer :level
      t.integer :health
      t.integer :stamina
      t.integer :max_health
      t.integer :max_stamina
      t.string :rarity
      t.string :image_url

      t.timestamps
    end
  end
end
