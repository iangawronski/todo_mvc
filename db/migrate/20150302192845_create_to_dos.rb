class CreateToDos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.integer :todo_id
      t.string :taskname
      t.text :body
      t.boolean :finished
    end
  end
end
