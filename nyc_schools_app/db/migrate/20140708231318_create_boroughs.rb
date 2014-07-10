class CreateBoroughs < ActiveRecord::Migration
  def change
    create_table :boroughs do |t|
      t.text :name
      t.integer :total_pop
      t.integer :enrollment
      t.integer :math_num_tested
      t.float :"math_pct_lvl1"
      t.float :"math_pct_lvl2"
      t.float :"math_pct_lvl3"
      t.float :"math_pct_lvl4"
      t.integer :ela_num_tested
      t.float :"ela_pct_lvl1"
      t.float :"ela_pct_lvl2"
      t.float :"ela_pct_lvl3"
      t.float :"ela_pct_lvl4"
    end
  end
end
