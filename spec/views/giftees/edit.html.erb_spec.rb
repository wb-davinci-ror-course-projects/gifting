require 'rails_helper'

RSpec.describe 'giftees/edit', type: :view do
  before(:each) do
    @giftee = assign(:giftee, Giftee.create!(
      first_name: 'MyString',
      last_name: 'MyString'
    ))
  end

  it 'renders the edit giftee form' do
    render

    assert_select 'form[action=?][method=?]', giftee_path(@giftee), 'post' do

      assert_select 'input#giftee_first_name[name=?]', 'giftee[first_name]'

      assert_select 'input#giftee_last_name[name=?]', 'giftee[last_name]'
    end
  end
end
