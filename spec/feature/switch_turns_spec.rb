require 'spec_helper'
#require '../battle/app'

feature 'switch turns' do
  scenario 'play switches from player 1 to player 2' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Nick's turn"
  end
end
