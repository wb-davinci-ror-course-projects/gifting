require 'rails_helper'

RSpec.describe 'gifters/new', type: :view do
  before(:each) do
    assign(:gifter, Gifter.new(
      name: 'MyString',
      password: 'MyString',
      password_confirmation: 'MyString'
    ))
  end

  it 'renders new gifter form' do
    render

    assert_select 'form[action=?][method=?]', gifters_path, 'post' do

      assert_select 'input#gifter_name[name=?]', 'gifter[name]'

      assert_select 'input#gifter_password[name=?]', 'gifter[password]'

      assert_select 'input#gifter_password_confirmation[name=?]', 'gifter[password_confirmation]'

    end
  end
end
