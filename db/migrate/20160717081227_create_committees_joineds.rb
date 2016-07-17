class CreateCommitteesJoineds < ActiveRecord::Migration
  def change
    create_table :committees_joineds do |t|
      t.integer :user_id
      t.integer :committee_id

      t.timestamps null: false
    end
  end
end
