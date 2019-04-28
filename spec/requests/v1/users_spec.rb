require 'rails_helper'

RSpec.describe 'V1::Users', type: :request do
  include Docs::V1::Users::Api

  let(:user_attributes) { attributes_for(:user) }
  let(:user_params) { user_attributes.merge(password_confirmation: user_attributes[:password]) }

  describe 'POST /api/v1/auth/users' do
    include Docs::V1::Users::Create

    it 'creates new user', :dox do
      post api_v1_users_path, params: user_params
      expect(response).to have_http_status(201)
    end

    it 'does not create user without password confirmation' do
      post api_v1_users_path, params: user_attributes
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end
  end
end
