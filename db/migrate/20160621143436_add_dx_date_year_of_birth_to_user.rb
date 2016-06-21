class AddDxDateYearOfBirthToUser < ActiveRecord::Migration
  def change
    add_column :users, :dx_date, :date
    add_column :users, :year_of_birth, :integer
  end
end
