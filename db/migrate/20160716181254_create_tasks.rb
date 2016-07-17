class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :user_id
      t.integer :session_id
      t.integer :shift_id

      t.timestamps null: false
    end
  end
end
