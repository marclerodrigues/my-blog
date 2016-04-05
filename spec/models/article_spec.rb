require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) {FactoryGirl.create(:article)}
  it 'has a valid factory' do
    expect(article).to be_valid
  end
  it 'is invalid without title' do
    article.title = nil
    expect(article).not_to be_valid
  end
  it 'is invalid without content' do
    article.content = nil
    expect(article).not_to be_valid
  end
end