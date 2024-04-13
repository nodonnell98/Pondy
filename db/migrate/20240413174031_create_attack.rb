class CreateAttack < ActiveRecord::Migration[7.1]
  def change
    create_table :attacks do |t|

      t.timestamps
    end
  end
end
