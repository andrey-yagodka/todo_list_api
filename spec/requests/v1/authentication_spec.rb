require 'rails_helper'

RSpec.describe 'V1::Authentication', type: :request do
  include Docs::V1::Authentication::Api

  let(:user) { create(:user) }

  describe 'POST /api/v1/sign_in' do
    include Docs::V1::Authentication::Create

    before { post api_v1_sign_in_path, params: params }

    context 'valid params' do
      let(:params) { { username: user.username, password: user.password } }

      it 'signs in user', :dox do
        expect(response).to have_http_status 200
      end
    end

    context 'invlaid params' do
      context 'invalid username' do
        let(:params) { { username: user.username.succ, password: user.password } }

        it 'does not sign in' do
          expect(response).to have_http_status 401
        end
      end

      context 'invalid password' do
        let(:params) { { username: user.username, password: user.password.succ } }

        it 'does not sign in' do
          expect(response).to have_http_status 401
        end
      end
    end
  end
end
