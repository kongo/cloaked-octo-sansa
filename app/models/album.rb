class Album < ActiveRecord::Base
  belongs_to :user
  has_many :pictures
  validates_presence_of :user
end
