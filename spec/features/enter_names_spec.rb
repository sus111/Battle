require 'spec_helper'
require '../battle/app'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Sarah vs. Dave'
end
end
