class Task < ActiveRecord::Base
  belongs_to :committee
  belongs_to :user
  belongs_to :seminar
  belongs_to :shift
end
