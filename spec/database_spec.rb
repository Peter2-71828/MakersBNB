require './app'

feature 'it stores information' do

    scenario 'it can log in' do
        visit('/login')
        fill_in('name', with: 'Toby Dawson')
        fill_in('email', with: 'tobydawson1@gmail.com')
        fill_in('password', with: 'secret')
        click_button("login")
        expect(page).to have_content "Toby Dawson"
    end
end
