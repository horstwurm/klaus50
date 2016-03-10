class CreateVotings < ActiveRecord::Migration
  def change
    create_table :votings do |t|
      t.integer :user_id
      t.integer :picture_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
