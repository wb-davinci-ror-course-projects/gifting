require 'rails_helper'

RSpec.describe 'occasions/new', type: :view do
  before(:each) do
    assign(:occasion, Occasion.new(
      type_of_occasion: 'MyString',
      gifter_id: 1,
      giftee_id: 1
    ))
  end

  it 'renders new occasion form' do
    render

    assert_select 'form[action=?][method=?]', occasions_path, 'post' do

      assert_select 'input#occasion_type_of_occasion[name=?]', 'occasion[type_of_occasion]'

      assert_select 'input#occasion_gifter_id[name=?]', 'occasion[gifter_id]'

      assert_select 'input#occasion_giftee_id[name=?]', 'occasion[giftee_id]'
    end
  end
end
