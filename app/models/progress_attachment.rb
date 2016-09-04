class ProgressAttachment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :progress
  validates :image, presence: true
end
