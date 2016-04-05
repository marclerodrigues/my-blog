require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {FactoryGirl.create(:user)}
  it 'has a valid factory' do
    expect(user).to be_valid
  end
  it 'is invalid without first_name ' do
    user.first_name = nil
    expect(user).not_to be_valid
  end
  it 'is invalid without last_name' do
    user.last_name = nil
    expect(user).not_to be_valid
  end
  it 'return a valid name' do
    expect(user.name).to eq("Marcle Rodrigues")
  end
end
