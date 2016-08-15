class Progress < ActiveRecord::Base
 default_scope -> { order(created_at: :desc)}
  mount_uploaders :images, ImageUploader
end