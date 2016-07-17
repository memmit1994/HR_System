class CreateAvailables < ActiveRecord::Migration
  def change
    create_table :availables do |t|
      t.integer :user_id
      t.integer :shift_id

      t.timestamps null: false
    end
  end
end
