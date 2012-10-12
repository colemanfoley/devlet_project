class Comment < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :User
  attr_accessible :comment, :email, :name, :website
end
