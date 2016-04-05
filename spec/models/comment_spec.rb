require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    @user = FactoryGirl.create(:user)
    @article = FactoryGirl.create(:article, user: @user)
    @comment = FactoryGirl.create(:comment, article: @article, user: @user)
  end

  it 'has a valid factory' do
    expect(@comment).to be_valid
  end
  it 'is invalid without a content' do
    @comment.body = nil
    expect(@comment).not_to be_valid
  end
  it 'is invalid without article' do
    @comment.article = nil
    expect(@comment).not_to be_valid
  end
  it 'is invalid without user' do
    @comment.user = nil
    expect(@comment).not_to be_valid
  end
end