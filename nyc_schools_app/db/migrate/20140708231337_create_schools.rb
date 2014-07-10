class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :system_code
      t.string :name
      t.string :managed_by
      t.string :category
      t.string :grades
      t.string :open_date
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :principal_name
      t.string :district_code
      t.string :pr_overall
      t.string :progress_grade
      t.string :performance_grade
      t.string :env_grade
      t.string :readiness_grade
      t.string :"2012_grade"
      t.string :"2011_grade"
      t.string :"2010_grade"
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
      t.belongs_to :district
    end
  end
end
