require 'rails_helper'

RSpec.describe 'giftees/new', type: :view do
  before(:each) do
    assign(:giftee, Giftee.new(
      first_name: 'MyString',
      last_name: 'MyString'
    ))
  end

  it 'renders new giftee form' do
    render

    assert_select 'form[action=?][method=?]', giftees_path, 'post' do

      assert_select 'input#giftee_first_name[name=?]', 'giftee[first_name]'

      assert_select 'input#giftee_last_name[name=?]', 'giftee[last_name]'
    end
  end
end
