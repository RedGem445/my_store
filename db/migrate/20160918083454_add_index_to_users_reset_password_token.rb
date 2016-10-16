class AddIndexToUsersResetPasswordToken < ActiveRecord::Migration[5.0]
  def change
  end
  add_index :users, :reset_password_token, unique: true
end
