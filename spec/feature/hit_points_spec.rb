feature 'HP' do
  scenario 'shows hit points' do
    sign_in_and_play
    expect(page).to have_content "Thady: 60HP"
  end
end
