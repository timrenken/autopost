class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :content
  validates_presence_of :scheduled_at
  validates_length_of :content, maximum: 140, messages: "Needs to be less than 140 characters"
end
