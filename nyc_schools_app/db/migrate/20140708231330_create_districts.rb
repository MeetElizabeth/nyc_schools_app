class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :district_title
      t.integer :avg_attendance
      t.float :avg_enrollment
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
      t.belongs_to :borough
    end
  end
end
