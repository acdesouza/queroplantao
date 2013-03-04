class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end