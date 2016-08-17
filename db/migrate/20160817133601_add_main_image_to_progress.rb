class AddMainImageToProgress < ActiveRecord::Migration
  def change
    add_column :progresses, :main_image, :string
  end
end
