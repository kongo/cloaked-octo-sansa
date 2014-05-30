class Picture < ActiveRecord::Base
  belongs_to :album
  validates_presence_of :album
  mount_uploader :image, ImageUploader
end
