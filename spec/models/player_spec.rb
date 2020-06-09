require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should validate_presence_of(:second_name) }
end
