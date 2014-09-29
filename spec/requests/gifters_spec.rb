require 'rails_helper'

RSpec.describe 'Gifters', type: :request do
  describe 'GET /gifters' do
    it 'works! (now write some real specs)' do
      get gifters_path
      expect(response).to have_http_status(200)
    end
  end
end
