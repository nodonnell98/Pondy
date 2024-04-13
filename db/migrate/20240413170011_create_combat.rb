class CreateCombat < ActiveRecord::Migration[7.1]
  def change
    create_table :combats do |t|
      t.references :frog, null: false, foreign_key: true
      t.references :enemy, null: false, foreign_key: true
      t.integer :round

      t.timestamps
    end
  end
end
