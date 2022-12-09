# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 seeding"

puts "⚡ users"
user1 = User.create(username: "Rajab", password: "user1")
user2 = User.create(username: "Vincent", password: "user2")
user3 = User.create(username: "Zablon", password: "user3")
user4 = User.create(username: "Mercy", password: "user4")
user5 = User.create(username: "Andrew", password: "user5")


puts "⚡ apartments"
apartments = []
15.times do
    apartments << Apartment.create(name:Faker::Ancient.god, location: ["Ongata Rongai", "Langata", "Ruiru", "Juja", "Roysambu", "Kileleshwa", "South B" ].sample, user_id: [user1, user2, user3, user4, user5].sample.id)
end

puts "🦸‍♀️ tenants"
tenants = []
90.times do
    tenants << Tenant.create(
        name: Faker::Name.name, 
        phone_number: rand(254700000000..254799999999).to_i,
        email: Faker::Internet.email,
        house_number: rand(1..40).to_i,
        number_of_bedrooms: ["bedsitter", "1 bedroom", "2 bedrooms", "3 bedrooms", "4 bedrooms"].sample,
        rent: rand(3000..70000).to_i,
        is_paid: [true, false].sample,
        apartment_id: rand(1..15).to_i
    )
end

puts "😀 done seeding"