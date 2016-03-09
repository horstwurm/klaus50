class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :comment
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
