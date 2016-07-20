require 'spec_helper'
require '../battle/app'

feature 'Reduce Hit Points' do
  scenario 'Player one reduces player two\'s hit points' do
    sign_in_and_play
    click_button('Attack')
    expect($player_2.hitpoints).to eq 50
end
end
