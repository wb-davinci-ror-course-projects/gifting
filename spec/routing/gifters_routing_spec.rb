require 'rails_helper'

RSpec.describe GiftersController, type: :routing do
  describe 'routing' do

    it 'routes to #new' do
      expect(get: '/gifters/new').to route_to('gifters#new')
    end

    it 'routes to #edit' do
      expect(get: '/gifters/1/edit').to route_to('gifters#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/gifters').to route_to('gifters#create')
    end

    it 'routes to #update' do
      expect(put: '/gifters/1').to route_to('gifters#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/gifters/1').to route_to('gifters#destroy', id: '1')
    end

  end
end
