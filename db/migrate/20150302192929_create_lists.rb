class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :user_id
      t.integer :list_id
    end
  end
end
