feature 'new spaces' do
  scenario 'user can list new space' do
    signup
    click_button 'Add'
    fill_in 'space_name', with: "Test house"
    fill_in 'description', with: "A fabulous test"
    fill_in 'price_per_night', with: "10"
    fill_in 'date', with: "29-02-2020"
    click_button 'Post Space'
    expect(page).to have_content("A fabulous test")
  end
end