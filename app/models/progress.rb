class Progress < ActiveRecord::Base
  has_many :progress_attachments
  accepts_nested_attributes_for :progress_attachments
end


