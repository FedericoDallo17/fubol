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
require "rails_helper"

RSpec.describe User do
  describe "validations" do
    # it { is_expected.to validate_presence_of(:email) }
    # it { is_expected.to validate_presence_of(:name) }
  end
end
