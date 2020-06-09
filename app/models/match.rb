class Match < ApplicationRecord
  has_many :players
  has_many :results, dependent: :destroy
  validates :name, presence: true
end
