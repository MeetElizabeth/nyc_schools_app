class CreateBoroughs < ActiveRecord::Migration
  def change
    create_table :boroughs do |t|
      t.text :name
      t.integer :population
      t.timestamps
    end
  end
end
