# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Pin.delete_all

puts 'Old records destroyed'

MULTIPLIER = 5

(2 * MULTIPLIER).times do
  u = User.new(username: Faker::Name.name)

  rand(1..4).times do
    p = u.pins.build
    p.item_name = Faker::Commerce.product_name
    p.description = Faker::Company.catch_phrase
    p.buy_sell = false
  end

  u.save!
end

puts 'Users and pins created'