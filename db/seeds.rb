# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

neighborhoods_file = Rails.root.join('lib', 'seeds', 'neighborhoods.json').to_s
neighborhood_hashes = JSON.parse(open(neighborhoods_file).read)

Neighborhood.destroy_all
neighborhood_hashes.each do |neighborhood_hash|
  d = Neighborhood.new
  d.neighborhood = neighborhood_hash["neighborhood"]
  d.district = neighborhood_hash["district"]
  d.save
end
puts "There are now #{Neighborhood.count} rows in the neighborhoods table."

universities_file = Rails.root.join('lib', 'seeds', 'universities.json').to_s
university_hashes = JSON.parse(open(universities_file).read)

University.destroy_all
university_hashes.each do |university_hash|
  d = University.new
  d.university = university_hash["university"]
  d.save
end
puts "There are now #{University.count} rows in the universities table."
