class Progress < ActiveRecord::Base
  default_scope ->{order(created_at: :DESC)}
  has_many :progress_attachments
  accepts_nested_attributes_for :progress_attachments
end


