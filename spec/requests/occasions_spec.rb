require 'rails_helper'

RSpec.describe 'Occasions', type: :request do
  describe 'GET /occasions' do
    it 'works! (now write some real specs)' do
      get occasions_path
      expect(response).to have_http_status(200)
    end
  end
end
