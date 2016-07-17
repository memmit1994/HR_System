class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :events
  has_and_belongs_to_many :shifts,join_table: "availables"
  has_and_belongs_to_many :shifts,join_table: "tasks"
  has_and_belongs_to_many :sessions,join_table: "tasks"
  has_and_belongs_to_many :committees, join_table: "committees_joineds"

end
