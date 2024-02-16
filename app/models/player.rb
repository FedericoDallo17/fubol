# == Schema Information
#
# Table name: players
#
#  id            :bigint           not null, primary key
#  first_name    :string           not null
#  last_name     :string           not null
#  neocoaster    :boolean          default(TRUE), not null
#  nickname      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  invited_by_id :bigint
#
# Indexes
#
#  index_players_on_invited_by_id  (invited_by_id)
#
# Foreign Keys
#
#  fk_rails_...  (invited_by_id => players.id)
#
class Player < ApplicationRecord
  validates_presence_of %i[first_name last_name nickname neocoaster]
  has_many :match_players
  has_many :matches, through: :match_players
end
