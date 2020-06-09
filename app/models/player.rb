class Player < ApplicationRecord
  has_many :results
  belongs_to :team
  validates :second_name, presence: true
end
