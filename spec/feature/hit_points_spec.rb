#require 'spec_helper'
#require '../battle/app'

feature 'HP' do
  scenario 'shows hit points' do
    sign_in_and_play
    expect(page).to have_content "Nick: 60HP"
  end
end
