feature 'user can log in' do
  scenario 'user logs in' do
    visit('/login')
    fill_in 'name', with: "Paulo"
    click_button("Submit")
    expect(page).to have_content "Paulo"
  end
end