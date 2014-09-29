require 'rails_helper'

RSpec.describe 'occasions/show', type: :view do
  before(:each) do
    @occasion = assign(:occasion, Occasion.create!(
      type_of_occasion: 'Type Occasion',
      gifter_id: 1,
      giftee_id: 2
    ))
  end

  it 'renders attributes in <p>' do
    render
    # expect(rendered).to match(/Type Occasion/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
