class Lesson < ActiveRecord::Base
  belongs_to :track
  belongs_to :category
  belongs_to :user
  attr_accessible :body, :date_published, :title
end
