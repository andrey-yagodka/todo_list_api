RSpec.describe Comment, type: :model do
  describe 'database columns' do
    it { is_expected.to have_db_column(:body).of_type(:text).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_index(:task_id) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:task) }
  end

  context 'validations' do
    describe 'presence' do
      it { is_expected.to validate_presence_of(:body) }
    end

    describe 'length' do
      let(:body) { Comment::SIZE[:body] }

      it { is_expected.to validate_length_of(:body).is_at_least(body.min).is_at_most(body.max) }
    end
  end
end
