class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.float :attendance
      t.integer :enrollment
      t.timestamps
      t.belongs_to :borough
    end
  end
end
