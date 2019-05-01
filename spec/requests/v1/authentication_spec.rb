require 'rails_helper'

RSpec.describe 'V1::Authentication', type: :request do
  include Docs::V1::Authentication::Api

  let(:user) { create(:user) }
  let(:params) { { username: user.username, password: user.password } }

  describe 'POST /api/v1/sign_in' do
    include Docs::V1::Authentication::Create

    before { post api_v1_sign_in_path, params: params }

    it 'signs in user', :dox do
      expect(response).to have_http_status 200
    end
  end
end
