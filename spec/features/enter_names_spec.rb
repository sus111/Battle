
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_one_name, with: 'John'
    fill_in :player_two_name, with: 'Sarah'
    click_button('Submit')
    expect(page).to have_content 'John vs Sarah'
end
end
