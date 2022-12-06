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
90.times do
    tenants << Tenant.create(
        name: Faker::Name.name, 
        phone_number: rand(254700000000..254799999999).to_f.uniq,
        email: Faker::Internet.email
        house_number: rand(1..40).to_f
        number_of_bedrooms: rand(1..4).to_f
        rent_amount: rand(3000..70000).to_f
        is_paid: [true, false].sample
        apartment_id: rand(1..15).to_f
    )
end

puts "⚡ apartments"
apartments = []
15.times do
    apartments << Apartment.create(name:Faker::Ancient.god, location: ["Ongata Rongai", "Langata", "Ruiru", "Juja", "Roysambu", "Kileleshwa", "South B" ].sample, user_id: rand(1..5).to_f )
end

puts "⚡ users"
users = []
5.times do
    users << User.create(name: Faker::Internet.username, password_digest: Faker::Internet.password )
end