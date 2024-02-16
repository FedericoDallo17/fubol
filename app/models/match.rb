# == Schema Information
#
# Table name: matches
#
#  id              :bigint           not null, primary key
#  date            :date             not null
#  goals_away_team :integer          not null
#  goals_home_team :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  pitch_id        :bigint           not null
#
# Indexes
#
#  index_matches_on_pitch_id  (pitch_id)
#
class Match < ApplicationRecord
  has_one :pitch
  has_many :matches_players
  has_many :players, through: :matches_players

  validates_presence_of %i[date pitch_id]
  validates %i[goals_home_team goals_away_team], numericality: { greater_than_or_equal_to: 0 }
end
