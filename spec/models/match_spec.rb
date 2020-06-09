require 'rails_helper'

RSpec.describe Match, type: :model do
  it { should have_many(:results).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end
