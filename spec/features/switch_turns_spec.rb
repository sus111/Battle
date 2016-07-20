require 'spec_helper'
require '../battle/app'

feature 'Switch turns' do
  scenario 'After player 1\'s turn switches to player 2' do
    sign_in_and_play
    expect(page).to have_content "Sarah's turn"
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Dave: 50 Hitpoints'
    expect(page).to have_content "Dave's turn"
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Sarah: 50 Hitpoints'
    expect(page).to have_content "Sarah's turn"
  end
end
