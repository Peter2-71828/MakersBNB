feature 'new spaces' do
  scenario 'user can list new space' do
    visit('/login')
    fill_in 'name', with: "Test"
    fill_in 'email', with: "test@test.com"
    fill_in 'password', with: "test"
    click_button 'login'
    expect(current_path).to eq('/spaces')
    click_on 'Add'
    fill_in 'Space_Name', with: "Test house"
    fill_in 'Description', with: "A fabulous test"
    fill_in 'Price', with: "10"
    fill_in 'Available dates', with: "29-02-2020"
    click_button 'Post Space'
    expect(page).to_have content("Test house", "A fabulous test", "10")
  end
end