require 'spec_helper'

feature 'homepage has a login button' do
  scenario 'login button available' do
    visit('/')
    fill_in 'name', with: "Test"
    fill_in 'email', with: "test@test.com"
    fill_in 'password', with: "test"
    click_button 'login'
    expect(current_path).to eq('/spaces')
  end
end
