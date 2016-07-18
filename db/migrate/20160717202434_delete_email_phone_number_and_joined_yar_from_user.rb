class DeleteEmailPhoneNumberAndJoinedYarFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :joined_yar, :integer
  end
end
