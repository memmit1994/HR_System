class CreateCommitteeJoins < ActiveRecord::Migration
  def change
    create_table :committee_joins do |t|
      t.integer :user_id
      t.integer :committee_id

      t.timestamps null: false
    end
  end
end
