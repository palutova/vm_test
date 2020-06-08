class Player < ApplicationRecord
  has_many :results
  belongs_to :team
end
