require 'rails_helper'

feature 'Gifter Session' do
  scenario 'gifter can login and see occasions' do
    FactoryGirl.create(:gifter, id: 1000000, name: 'happy', password: 'test', password_confirmation: 'test')
    FactoryGirl.create(:occasion, gifter_id: 1000000, type_of_occasion: 'Hanukkah')
    FactoryGirl.create(:occasion, gifter_id: 1000001, type_of_occasion: 'Birthday')

    visit login_path # upcoming_occasions

    fill_in 'Name', with: 'happy'
    fill_in 'Password', with: 'test'

    click_button 'Login'

    expect(page).to have_content('Hanukkah')
    expect(page).to_not have_content('Birthday')
  end

  scenario 'gifter logs out' do
    visit logout_path # upcoming_occasions
  end
end
