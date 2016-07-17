class Shift < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: "tasks"
  belongs_to :event
  has_and_belongs_to_many :users, join_table: "availables"

end
