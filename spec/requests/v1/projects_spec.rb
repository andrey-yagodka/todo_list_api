require 'rails_helper'

RSpec.describe 'V1::Projects', type: :request do
  include Docs::V1::Projects::Api

  let(:user) { create(:user) }
  let(:project) { create(:project, user: user) }
  let(:params) { { project: attributes_for(:project) } }
  let(:token) { Authentication::JwtService.new.encode(user) }
  let(:headers) { { authorization: token, accept: 'application/json' } }

  describe 'POST /api/v1/projects' do
    include Docs::V1::Projects::Create

    it 'creates a new project', :dox do
      expect { post api_v1_projects_path, headers: headers, params: params }.to change(Project, :count).by(1)
      expect(response).to have_http_status(201)
      expect(response).to match_json_schema('project')
    end
  end

  describe 'PUT /api/v1/projects/:id' do
    include Docs::V1::Projects::Update

    it 'updates project', :dox do
      put api_v1_project_path(id: project.id), headers: headers, params: params
      expect(response).to have_http_status(200)
      expect(response).to match_json_schema('project')
    end
  end

  describe 'DELETE /api/v1/projects/:id' do
    include Docs::V1::Projects::Destroy

    it 'deletes project', :dox do
      delete api_v1_project_path(id: project.id), headers: headers
      expect(response).to have_http_status(200)
    end
  end
end
