class RenameTableSessions < ActiveRecord::Migration
  def change
    rename_table :sessions, :seminars
  end
end
