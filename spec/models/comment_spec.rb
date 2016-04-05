require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = FactoryGirl.create(:user)
  comment = (user.comments << FactoryGirl.create(:comment)).first

  p comment.user
  p comment

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
