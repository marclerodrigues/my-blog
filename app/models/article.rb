class Article < ActiveRecord::Base
  validates :title, :user, :content, :presence => true
  belongs_to :user
  has_many :comments
end