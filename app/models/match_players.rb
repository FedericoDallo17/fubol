# == Schema Information
#
# Table name: match_players
#
#  id         :bigint           not null, primary key
#  home_team  :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  match_id   :bigint           not null
#  player_id  :bigint           not null
#
# Indexes
#
#  index_match_players_on_match_id                (match_id)
#  index_match_players_on_match_id_and_player_id  (match_id,player_id) UNIQUE
#  index_match_players_on_player_id               (player_id)
#
class MatchPlayers < ApplicationRecord
  validates_presence_of %i[match_id player_id]
end
