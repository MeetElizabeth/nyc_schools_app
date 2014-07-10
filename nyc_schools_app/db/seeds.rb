# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Borough.destroy_all
District.destroy_all
School.destroy_all

boroughs = [
  {
    name: "Bronx",
    total_pop: 1385108,
    enrollment: 205011,
    math_num_tested: 93227,
    "math_pct_lvl1" => 50.7,
    "math_pct_lvl2" => 33.6,
    "math_pct_lvl3" => 12.0,
    "math_pct_lvl4" => 3.8,
    ela_num_tested: 91349,
    "ela_pct_lvl1" => 49.4,
    "ela_pct_lvl2" => 36.4,
    "ela_pct_lvl3" => 11.8,
    "ela_pct_lvl4" => 2.4
  },
  {
    name: "Brooklyn",
    total_pop: 2504700,
    enrollment: 290684,
    math_num_tested: 126911,
    "math_pct_lvl1" => 37.0,
    "math_pct_lvl2" => 33.5,
    "math_pct_lvl3" => 18.4,
    "math_pct_lvl4" => 11.1,
    ela_num_tested: 125059,
    "ela_pct_lvl1" => 36.6,
    "ela_pct_lvl2" => 37.1,
    "ela_pct_lvl3" => 19.0,
    "ela_pct_lvl4" => 7.3
  },
  {
    name: "Manhattan",
    total_pop: 1585873,
    enrollment: 148899,
    math_num_tested: 51968,
    "math_pct_lvl1" => 34.3,
    "math_pct_lvl2" => 30.4,
    "math_pct_lvl3" => 19.3,
    "math_pct_lvl4" => 15.9,
    ela_num_tested: 51156,
    "ela_pct_lvl1" => 33.6,
    "ela_pct_lvl2" => 34.0,
    "ela_pct_lvl3" => 21.0,
    "ela_pct_lvl4" => 11.3
  },
  {
    name: "Queens",
    total_pop: 2230722,
    enrollment: 277527,
    math_num_tested: 123098,
    "math_pct_lvl1" => 28.5,
    "math_pct_lvl2" => 34.5,
    "math_pct_lvl3" => 22.0,
    "math_pct_lvl4" => 15.0,
    ela_num_tested: 121052,
    "ela_pct_lvl1" => 29.2,
    "ela_pct_lvl2" => 38.8,
    "ela_pct_lvl3" => 22.5,
    "ela_pct_lvl4" => 9.5
  },
  {
    name: "Staten Island",
    total_pop: 468730,
    enrollment: 60604,
    math_num_tested: 26606,
    "math_pct_lvl1" => 29.8,
    "math_pct_lvl2" => 36.5,
    "math_pct_lvl3" => 22.3,
    "math_pct_lvl4" => 11.3,
    ela_num_tested: 26510,
    "ela_pct_lvl1" => 29.0,
    "ela_pct_lvl2" => 39.3,
    "ela_pct_lvl3" => 23.1,
    "ela_pct_lvl4" => 8.5
  }
]

boroughs.each do |borough_hash|
  Borough.create!(borough_hash)
end

school_info = CSV.open( File.join( File.dirname(__FILE__),"school_info/2013_schools_data.csv"), 'r')

school_info.each do |schools|
  schools = schools.map {|entry| entry.force_encoding('UTF-8') unless entry.nil? }
  p schools
  School.create({
    system_code: schools[0],
    name: schools[1],
    managed_by: schools[2],
    category: schools[3],
    grades: schools[4],
    open_date: schools[5],
    address: schools[6],
    city: schools[7],
    state: schools[8],
    zip: schools[9],
    principal_name: schools[10],
    district_code: schools[11],
    pr_overall: schools[12],
    progress_grade: schools[13],
    performance_grade: schools[14],
    env_grade: schools[15],
    readiness_grade: schools[16],
    "2012_grade" => schools[17],
    "2011_grade" => schools[18],
    "2010_grade" => schools[19],
    math_num_tested: schools[20],
    "math_pct_lvl1" => schools[21],
    "math_pct_lvl2" => schools[22],
    "math_pct_lvl3" => schools[23],
    "math_pct_lvl4" => schools[24],
    ela_num_tested: schools[25],
    "ela_pct_lvl1" => schools[26],
    "ela_pct_lvl2" => schools[27],
    "ela_pct_lvl3" => schools[28],
    "ela_pct_lvl4" => schools[29]
    })
end

district_info = CSV.open( File.join( File.dirname(__FILE__),"school_info/district_data.csv"), 'r')

district_info.each do |districts|
  p districts
  District.create({
    district_title: districts[0],
    avg_attendance: districts[1],
    avg_enrollment: districts[2],
    math_num_tested: districts[3],
    "math_pct_lvl1" => districts[4],
    "math_pct_lvl2" => districts[5],
    "math_pct_lvl3" => districts[6],
    "math_pct_lvl4" => districts[7],
    ela_num_tested: districts[8],
    "ela_pct_lvl1" => districts[9],
    "ela_pct_lvl2" => districts[10],
    "ela_pct_lvl3" => districts[11],
    "ela_pct_lvl4" => districts[12]
    })
end
