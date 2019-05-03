require 'rails_helper'

RSpec.describe LoadResourceService do
  subject(:load_resource_service) { described_class.new(params, controller_name) }

  let(:project) { create(:project) }
  let(:params) { { id: project.id } }
  let(:controller_name) { 'projects' }

  describe 'get current user project' do
    it { expect(load_resource_service.call).to match project }
  end
end
