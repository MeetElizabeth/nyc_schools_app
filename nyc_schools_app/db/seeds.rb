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
    population: 1385108
  },
  {
    name: "Brooklyn",
    population: 2504700
  },
  {
    name: "Manhattan",
    population: 1585873
  },
  {
    name: "Queens",
    population: 2230722
  },
  {
    name: "Staten Island",
    population: 468730
  }
]

boroughs.each do |borough_hash|
  Borough.create!(borough_hash)
end
