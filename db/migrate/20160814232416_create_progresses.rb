class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.string :title
      t.string :date
      t.text :content

      t.timestamps null: false
    end
  end
end
