require 'spec_helper'
require '../battle/app'

feature 'View Hit Points' do
  scenario 'viewing player two\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 60 Hitpoints'

end
end
