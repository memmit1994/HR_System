class Shift < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: "tasks"
  has_many :tasks
  belongs_to :event
  has_and_belongs_to_many :users, join_table: "availables"
  def start_time
    start
  end
end
