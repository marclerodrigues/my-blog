class Comment < ActiveRecord::Base
  validates :body, :user, :article, :presence => true
  belongs_to :user
  belongs_to :article
end