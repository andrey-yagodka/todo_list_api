require 'rails_helper'

RSpec.describe LoadResourceService do
  subject(:load_resource_service) { described_class.new(user, params, controller_name) }

  let(:user) { create(:user) }
  let(:project) { create(:project, user: user) }
  let(:params) { { id: project.id } }
  let(:controller_name) { 'projects' }

  describe 'get current user project' do
    it { expect(load_resource_service.call).to match project }
  end
end
