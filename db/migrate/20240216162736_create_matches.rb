class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.date :date, null: false
      t.references :pitch, null: false
      t.integer :goals_home_team, null: false
      t.integer :goals_away_team, null: false

      t.timestamps
    end
  end
end
