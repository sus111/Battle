require 'spec_helper'
require '../battle/app'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sarah'
    fill_in :player_2_name, with: 'Dave'
    click_button('Submit')
    expect(page).to have_content 'Sarah vs. Dave'
end
end
