class RenameSessionIdToSeminarIdForTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :session_id, :seminar_id
  end
end
