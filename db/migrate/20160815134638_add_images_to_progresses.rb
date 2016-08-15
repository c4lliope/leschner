class AddImagesToProgresses < ActiveRecord::Migration
  def change
    add_column :progresses, :images, :json
  end
end
