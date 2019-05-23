RSpec.describe 'V1::Tasks', type: :request do
  include Docs::V1::Tasks::Api

  let(:user) { create(:user) }
  let(:token) { Authentication::JwtService.new.encode(user) }
  let(:project) { create(:project, user: user) }
  let(:task) { create(:task, project: project) }
  let(:params) { { task: attributes_for(:task).merge(project_id: project.id) } }
  let(:headers) { { authorization: token, accept: 'application/json' } }

  describe 'POST /api/v1/tasks' do
    include Docs::V1::Tasks::Create

    it 'creates a new task', :dox do
      expect { post api_v1_tasks_path, headers: headers, params: params }.to change(Task, :count).by(1)
      expect(response).to have_http_status :created
      expect(response).to match_json_schema('task')
    end
  end

  describe 'PUT /api/v1/tasks/:id' do
    include Docs::V1::Tasks::Update

    it 'updates project', :dox do
      put api_v1_task_path(id: task.id), headers: headers, params: params
      expect(response).to have_http_status :ok
      expect(response).to match_json_schema('task')
    end
  end

  describe 'DELETE /api/v1/tasks/:id' do
    include Docs::V1::Tasks::Destroy

    it 'deletes project', :dox do
      delete api_v1_task_path(id: task.id), headers: headers
      expect(response).to have_http_status :ok
    end
  end
end
