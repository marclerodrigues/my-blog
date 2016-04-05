class User < ActiveRecord::Base
  validates :first_name, :last_name, :presence => true
  has_many :comments

  def name
    [first_name, last_name].join " "
  end
end
