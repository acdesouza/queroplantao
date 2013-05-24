class AddProfileDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :integer
    add_column :users, :graduation_year, :integer
  end
end
