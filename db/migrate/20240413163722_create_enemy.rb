class CreateEnemy < ActiveRecord::Migration[7.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :level
      t.integer :health
      t.integer :stamina
      t.integer :max_health
      t.integer :max_stamina
      t.string :resource_type
      t.integer :resource_qty
      t.string :image_url

      t.timestamps
    end
  end
end
