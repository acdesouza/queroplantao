class CreateRemunerations < ActiveRecord::Migration
  def change
    create_table :remunerations do |t|
      t.integer :how_much
      t.integer :how_long
      t.boolean :night_turn
      t.string :specialty
      t.boolean :joker

      t.timestamps
    end
  end
end
