require 'rails_helper'

RSpec.describe Article, type: :model do
  before :each do
    @user = FactoryGirl.create(:user)
    @article = (@user.articles << FactoryGirl.build(:article)).first
  end
  it 'has a valid factory' do
    expect(@article).to be_valid
  end
  it 'is invalid without title' do
    @article.title = nil
    expect(@article).not_to be_valid
  end
  it 'is invalid without content' do
    @article.content = nil
    expect(@article).not_to be_valid
  end
  it 'is invalid without user' do
    @article.user = nil
    expect(@article).not_to be_valid
  end
end