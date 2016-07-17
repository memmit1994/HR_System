class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :start
      t.datetime :end
      t.integer :event_id
      t.string :name
      t.string :speaker
      t.string :description

      t.timestamps null: false
    end
  end
end
