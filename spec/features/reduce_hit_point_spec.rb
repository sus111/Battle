require 'spec_helper'
require '../battle/app'

feature 'Reduce Hit Points' do
  scenario 'Player one reduces player two\'s hit points' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Dave: 50 Hitpoints'
    expect(page).not_to have_content 'Dave: 60 Hitpoints'
  end
end
