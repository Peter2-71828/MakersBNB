require 'spec_helper'

feature 'homepage has a login button' do
  scenario 'login button available' do
    visit('/')
    click_button 'login'
    expect(current_path).to eq('/login')
  end
end
