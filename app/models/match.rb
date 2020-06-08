class Match < ApplicationRecord
  has_many :players
  has_many :results
end
