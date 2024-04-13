class CreateHabit < ActiveRecord::Migration[7.1]
  def change
    create_table :habits do |t|
      t.string :name
      t.integer :frequency
      t.integer :count
      t.integer :streak
      t.boolean :completed
      t.references :frog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
