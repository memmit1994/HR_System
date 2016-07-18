class RenameTableComitteesJoineds < ActiveRecord::Migration
  def change
    rename_table :committees_joineds, :committee_joins
  end
end
