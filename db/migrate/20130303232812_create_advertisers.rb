class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.String :email
      t.String :password

      t.timestamps
    end
  end
end
