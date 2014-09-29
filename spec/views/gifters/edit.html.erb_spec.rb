require 'rails_helper'

RSpec.describe 'gifters/edit', type: :view do
  before(:each) do
    @gifter = assign(:gifter, Gifter.create!(
      name: 'MyString',
      password: 'MyString',
      password_confirmation: 'MyString'

    ))
  end

  it 'renders the edit gifter form' do
    render

    assert_select 'form[action=?][method=?]', gifter_path(@gifter), 'post' do

      assert_select 'input#gifter_name[name=?]', 'gifter[name]'

      assert_select 'input#gifter_password[name=?]', 'gifter[password]'

      assert_select 'input#gifter_password_confirmation[name=?]', 'gifter[password_confirmation]'

    end
  end
end
