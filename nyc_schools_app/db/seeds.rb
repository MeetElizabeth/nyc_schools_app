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
    ela_results: {
      num_tested: ,
      pct_lvl1: ,
      pct_lvl2: ,
      pct_lvl3: ,
      pct_lvl4: 
    }
  },
  {
    name: "Brooklyn",
    total_pop: 2504700,
    enrollment: 290684
  },
  {
    name: "Manhattan",
    total_pop: 1585873,
    enrollment: 148899
  },
  {
    name: "Queens",
    total_pop: 2230722,
    enrollment: 277527
  },
  {
    name: "Staten Island",
    total_pop: 468730,
    enrollment: 60604
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
    "2010_grade" => schools[19]
    })
end

district_info = CSV.open( File.join( File.dirname(__FILE__),"school_info/district_data.csv"), 'r')

district_info.each do |districts|
  p districts
  District.create({
    district_title: districts[0],
    avg_attendance: districts[1],
    avg_enrollment: districts[2]
    })
end
