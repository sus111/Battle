require 'spec_helper'
require '../battle/app'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Sarah: 60 Hitpoints vs. Dave: 60 Hitpoints"
  end
end
