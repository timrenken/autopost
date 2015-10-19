class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :content
  validates_presence_of :scheduled_at
  validates_length_of :content, maximum: 140, messages: "Needs to be less than 140 characters"
  validates_datetime :scheduled_at, :on => :create, :on_or_after => Time.zone.now
end
