require 'rails_helper'

RSpec.describe OccasionsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/occasions').to route_to('occasions#index')
    end

    it 'routes to #new' do
      expect(get: '/occasions/new').to route_to('occasions#new')
    end

    it 'routes to #show' do
      expect(get: '/occasions/1').to route_to('occasions#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/occasions/1/edit').to route_to('occasions#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/occasions').to route_to('occasions#create')
    end

    it 'routes to #update' do
      expect(put: '/occasions/1').to route_to('occasions#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/occasions/1').to route_to('occasions#destroy', id: '1')
    end

  end
end
