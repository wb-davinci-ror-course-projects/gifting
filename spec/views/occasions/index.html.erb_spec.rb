require 'rails_helper'

RSpec.describe 'occasions/index', type: :view do
  before(:each) do
    assign(:occasions, [
      Occasion.create!(
        type_of_occasion: 'Type Occasion',
        gifter_id: 1,
        giftee_id: 2
      ),
      Occasion.create!(
        type_of_occasion: 'Type Occasion',
        gifter_id: 1,
        giftee_id: 2
      )
    ])
  end

  # it 'renders a list of occasions' do
  #   render
  #   assert_select 'tr>td', text: 'Type Occasion'.to_s, :count => 2
  #   assert_select 'tr>td', text: 1.to_s, count: 2
  #   assert_select 'tr>td', text: 2.to_s, count: 2
  # end
end
