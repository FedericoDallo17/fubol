class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :nickname
      t.boolean :neocoaster, null: false, default: true
      t.references :invited_by, foreign_key: { to_table: :players }

      t.timestamps
    end
  end
end
