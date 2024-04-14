class CreateAttack < ActiveRecord::Migration[7.1]
  def change
    create_table :attacks do |t|
      t.string :name
      t.integer :damage
      t.integer :stamina_cost
      t.integer :level_required
      t.string :element
      t.string :image_url
      t.integer :attackable_id
      t.string :attackable_type

      t.timestamps
    end
  end
end
