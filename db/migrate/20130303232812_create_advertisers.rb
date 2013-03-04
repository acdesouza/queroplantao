class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
