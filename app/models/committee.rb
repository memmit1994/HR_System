class Committee < ActiveRecord::Base
  has_many :comittee_joins
  has_many :users, through: :comittee_joins
end
