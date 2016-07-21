require 'spec_helper'
require '../battle/app'

feature 'reduce_points' do
  scenario 'player two\'s hitpoints are reduced by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button("OK")
    expect(page).to have_content "Nick: 50HP"
  end
end
