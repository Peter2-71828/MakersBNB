

feature 'homepage has a login button' do
  scenario 'login button available' do
    signup
    expect(current_path).to eq('/spaces')
    expect(page).to have_content("Welcome Test")
  end
end
