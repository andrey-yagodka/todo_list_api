RSpec.describe Users::GetCurrentUserService do
  subject(:get_current_user_service) { described_class }

  let(:user) { create(:user) }
  let(:token) { Authentication::JwtService.new.encode(user) }

  describe 'get current user' do
    it { expect(get_current_user_service.call(token)).to match user }
  end
end
