class AddAdvertiserToPlantoes < ActiveRecord::Migration
  def up
    change_table :plantoes do |t|
      t.references :advertiser
    end
  end

  def down
    remove_column :plantoes, :advertiser_id
  end
end
