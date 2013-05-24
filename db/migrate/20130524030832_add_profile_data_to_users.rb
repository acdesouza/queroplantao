class AddProfileDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_column :users, :graduation_year, :integer
  end
end
