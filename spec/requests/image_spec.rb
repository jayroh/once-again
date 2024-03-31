# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Image' do
  describe 'GET #show' do
    it 'returns an image successfully' do
      get '/to-be-successful.jpg'

      expect(response).to be_successful
      expect(response.content_type).to eq('image/jpg')
    end
  end
end
