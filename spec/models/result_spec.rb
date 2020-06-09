require 'rails_helper'

RSpec.describe Result, type: :model do
  it { should validate_presence_of(:intro) }
end
