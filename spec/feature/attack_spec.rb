require 'spec_helper'
require '../battle/app'

feature 'attack' do
  scenario 'shows player has been attacked' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Thady attacked Nick"
  end
end
