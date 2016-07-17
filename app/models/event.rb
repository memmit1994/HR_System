class Event < ActiveRecord::Base
  has_many :shifts
  has_many :sessions
  belongs_to :user
end
