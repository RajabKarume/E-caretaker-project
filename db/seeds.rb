# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 seeding"

puts "🦸‍♀️ tenants"
tenants = []
30.times do
    tenants << Tenant.create(
        name: Faker::Name.name, 
        phone_number: rand(254700000000..254799999999).to_f,
        email: Faker::Internet.email
        house_number: rand(1..40)
        number_of_bedrooms: rand(1..4).to_f
        rent_amount: rand(3000..70000).to_f
        is_paid: [true, false].sample
    )
end