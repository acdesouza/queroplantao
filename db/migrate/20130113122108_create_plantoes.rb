class CreatePlantoes < ActiveRecord::Migration
  def change
    create_table :plantoes do |t|
      t.string :where
      t.date :when
      t.integer :how_much
      t.integer :how_long
      t.string :specialty
      t.string :contactName
      t.string :contactPhone
      t.text :obs

      t.timestamps
    end
  end
end
