feature 'Enter contestants' do
  scenario 'submitting names' do
    visit('/')
    fill_in :contestant_1_name, with: "Thady"
    fill_in :contestant_2_name, with: "Nick"
    click_button "Submit"
    expect(page).to have_content "Thady vs. Nick"
  end
end
