require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user, password: nil) }
  let(:username_length) { User::LENGTH[:username] }
  let(:password_length) { User::LENGTH[:password] }

  describe 'database columns' do
    it { is_expected.to have_db_column(:username).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'validations' do
    describe 'presence' do
      it { is_expected.to validate_presence_of(:username) }
      it { is_expected.to validate_presence_of(:password) }
      it { is_expected.to validate_presence_of(:password_confirmation) }
    end

    describe 'length' do
      it { is_expected.to validate_length_of(:username).is_at_least(username_length.min).is_at_most(username_length.max) }
      it { is_expected.to validate_length_of(:password).is_equal_to(password_length) }
    end

    it { expect(user).to validate_uniqueness_of(:username) }
    it { expect(user).to validate_confirmation_of(:password) }
  end

  context 'when values are invalid' do
    let(:user) { build(:user) }
    let(:special_characters) { "( )!#$%&'*;<+,-.>?@/:=[\]{|}^_`~\"" }

    it { expect(user).not_to allow_value('a' * (username_length.min - 1)).for(:username) }
    it { expect(user).not_to allow_value('a' * (username_length.max + 1)).for(:username) }
    it { expect(user).not_to allow_value(nil).for(:username) }
    it { expect(user).not_to allow_value('a' * (password_length - 1)).for(:password) }
    it { expect(user).not_to allow_value('a' * (password_length + 1)).for(:password) }

    it 'do not allow special characters for password' do
      special_characters.split.each do |char|
        expect(user).not_to allow_value(user.password + char).for(:password)
      end
    end
  end
end
