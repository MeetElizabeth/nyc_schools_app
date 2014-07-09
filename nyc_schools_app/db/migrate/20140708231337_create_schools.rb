class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :principal
      t.text :address
      t.integer :zip_code
      t.integer :enrollment
      t.text :website
      t.belongs_to :district
    end
  end
end
