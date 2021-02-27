# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Listing.destroy_all
devs = %w[Emaar PalmHills SODIC]
counter = 0

50.times do
  Listing.create(
    location: Faker::Address.street_address,
    bds: rand(1..5),
    ba: rand(1..3),
    area: rand(90..490),
    developer: devs.sample,
    price: rand(900_000..100_000_00)
  )
  counter += 1
  puts "Listing no #{counter} has been created"
end
