class Committee < ActiveRecord::Base
  has_and_belongs_to_many :users,join_table: "committee_joins"
  has_many :tasks
end
