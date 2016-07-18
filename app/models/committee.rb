class Committee < ActiveRecord::Base
  has_many :committee_joins
  has_many :users, through: :committee_joins
end
