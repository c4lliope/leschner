class CreateProgressAttachments < ActiveRecord::Migration
  def change
    create_table :progress_attachments do |t|
      t.integer :progress_id
      t.string :image

      t.timestamps null: false
    end
  end
end
