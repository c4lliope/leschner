class Progress < ActiveRecord::Base
  default_scope ->{order(created_at: :DESC)}
  has_many :progress_attachments
  accepts_nested_attributes_for :progress_attachments
  mount_uploader :main_image, ImageUploader
  validates :main_image,   presence: true
  validates :title,   presence: true
  validates :content,  presence: true
  validates :date,    presence: true

end


