require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

  it 'should do ok for add_result(match_id, player_id, text)' do
    expect(helper.add_result(nil, nil, nil)).to eq false
  end

  it 'should do ok for check_player_has_result' do
    expect(helper.check_player_has_result(nil, nil)).to eq false
  end

  it 'should do ok for show_player_on_top' do
    expect(helper.show_player_on_top(nil)).to eq false
  end

  it 'should do ok for show_player_on_top_with_team' do
    expect(helper.show_player_on_top_with_team(nil, nil )).to eq false
  end

end
