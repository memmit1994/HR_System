class Committee < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: "committees_joineds"
end
