class Seminar < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: "tasks"
  has_many :tasks
  belongs_to :event
  def start_time
    start
  end
end
