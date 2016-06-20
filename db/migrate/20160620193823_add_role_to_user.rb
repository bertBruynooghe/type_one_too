class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    User.find_each do |user|
      user.role = 'admin'
      user.save
    end
  end
end
