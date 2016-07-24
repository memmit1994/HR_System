class AddCommitteeIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :committee_id, :integer
  end
end
