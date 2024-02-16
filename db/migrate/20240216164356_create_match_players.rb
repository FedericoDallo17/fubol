class CreateMatchPlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :match_players do |t|
      t.references :match, index: true, null: false
      t.references :player, index: true, null: false
      t.boolean :home_team, null: false
      t.index %i[match_id player_id], unique: true

      t.timestamps
    end
  end
end
