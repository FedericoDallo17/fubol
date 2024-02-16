# == Schema Information
#
# Table name: pitches
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pitch < ApplicationRecord
  validates_presence_of :name
end
