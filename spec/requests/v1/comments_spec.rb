RSpec.describe 'V1::Comments', type: :request do
  include Docs::V1::Comments::Api

  let(:user) { create(:user) }
  let(:token) { Authentication::JwtService.new.encode(user) }
  let(:project) { create(:project, user: user) }
  let(:task) { create(:task, project: project) }
  let(:params) { { comment: attributes_for(:comment).merge(task_id: task.id) } }
  let(:headers) { { authorization: token, accept: 'application/json' } }

  describe 'POST /api/v1/comments' do
    include Docs::V1::Comments::Create

    it 'creates a comment', :dox do
      expect { post api_v1_comments_path, headers: headers, params: params }.to change(Comment, :count).by(1)
      expect(response).to have_http_status :created
      expect(response).to match_json_schema('comment')
    end
  end

  describe 'DELETE /api/v1/comments/:id' do
    include Docs::V1::Comments::Destroy

    let(:comment) { create(:comment, task: task) }

    it 'deletes a comment', :dox do
      delete api_v1_comment_path(id: comment.id), headers: headers
      expect(response).to have_http_status :ok
    end
  end
end
