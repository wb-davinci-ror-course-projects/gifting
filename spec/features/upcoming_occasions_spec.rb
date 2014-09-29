require 'rails_helper'

feature 'Display Upcoming Occasions' do
  scenario 'displays the occasions this week' do
    FactoryGirl.create(:occasion, day_of_occasion: Date.today, type_of_occasion: 'Easter')
    FactoryGirl.create(:occasion, type_of_occasion: 'Hanukkah')

    visit '/' # upcoming_occasions

    expect(page).to have_content('Hanukkah')
    expect(page).to have_content('Easter')

  end
end
