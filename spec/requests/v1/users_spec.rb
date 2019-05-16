require 'rails_helper'

RSpec.describe 'V1::Users', type: :request do
  include Docs::V1::Users::Api

  let(:user_attributes) { attributes_for(:user) }
  let(:valid_params) { user_attributes.merge(password_confirmation: user_attributes[:password]) }

  describe 'POST /api/v1/sign_up' do
    include Docs::V1::Users::Create

    before { post api_v1_sign_up_path, params: params }

    context 'when params are invalid' do
      let(:params) { valid_params }

      it 'signs up user', :dox do
        expect(response).to have_http_status(201)
      end
    end

    context 'when params are valid' do
      context 'when sername is not unique' do
        let(:user) { create(:user) }
        let(:params) { { username: user.username, password: user.password, password_confirmation: user.password } }

        it { expect(response).to have_http_status(422) }
      end

      context 'when password confirmation is not present' do
        let(:params) { valid_params.except(:password_confirmation) }

        it { expect(response).to have_http_status(422) }
      end
    end
  end
end
