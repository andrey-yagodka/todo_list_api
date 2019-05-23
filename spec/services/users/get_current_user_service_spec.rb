RSpec.describe Users::GetCurrentUserService do
  subject(:get_current_user_service) { described_class.new(token) }

  let(:user) { create(:user) }
  let(:token) { Authentication::JwtService.new.encode(user) }

  describe 'get current user' do
    it { expect(get_current_user_service.call).to match user }
  end
end
