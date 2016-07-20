require 'spec_helper'
require '../battle/app'

feature 'Attack Player' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Sarah attacked Dave'
  end

  
end
