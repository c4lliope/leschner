json.extract! progress_attachment, :id, :progress_id, :image, :created_at, :updated_at
json.url progress_attachment_url(progress_attachment, format: :json)