def signup
  visit('/')
  fill_in 'name', with: "Test"
  fill_in 'email', with: "test@test.com"
  fill_in 'password', with: "test"
  click_button 'login'
end 

def signup_and_list_new_space
  signup
  expect(current_path).to eq('/spaces')
  click_button "List New Space"
  fill_in 'Space_Name', with: "Test house"
  fill_in 'Description', with: "A fabulous test"
  fill_in 'Price', with: "10"
  fill_in 'Available dates', with: "29-02-2020"
  click_button 'Post Space'
end 