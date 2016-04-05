require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = FactoryGirl.build(:user)
  comment = (user.comments << FactoryGirl.create(:comment)).first
  it 'has a valid factory' do
    expect(comment).to be_valid
  end
  it 'is invalid without a content' do
    comment.body = nil
    expect(comment).not_to be_valid
  end
  it 'is invalid without user' do
    comment.user = nil
    expect(comment).not_to be_valid
  end
end
