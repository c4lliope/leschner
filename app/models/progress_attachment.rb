class ProgressAttachment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :progress
  # validates :main_image, presence: true
end
