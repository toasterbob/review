require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
    it { should validate_presence_of(:username) }
  end

  describe 'associations' do
    # association tests go here
  end

end
