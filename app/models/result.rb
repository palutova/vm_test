class Result < ApplicationRecord
  belongs_to :match
  belongs_to :player
  validates :intro, presence: true
end
