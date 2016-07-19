class Event < ActiveRecord::Base
  has_many :shifts
  has_many :seminars
  belongs_to :user
end
