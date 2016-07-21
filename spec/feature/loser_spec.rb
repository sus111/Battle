feature 'loser' do
  scenario 'player dies if Hps are 0' do
    sign_in_and_play
    11.times{multiple_attacks}
    expect(page).to have_content "Nick is dead"
  end
end
