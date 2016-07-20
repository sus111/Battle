feature 'attack' do
  scenario 'shows player has been attacked' do
    sign_in_and_play
    click_button "LET'S FIGHT"
    expect(page).to have_content "Thady attacked Nick"
  end
end
