# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

categories_csv = CSV.readlines("db/categories.csv")
categories_csv.shift
categories_csv.each do |row|
  Category.create(name: row[1], created_at: row[2], updated_at: row[3])
  # idを除くカラム名を記述する
end