feature 'loser' do
  scenario 'player dies if Hps are 0' do
    sign_in_and_play
    11.times{multiple_attacks}
    click_button "Attack" #need to change!
    expect(page).to have_content "GAME OVER"
  end
end
