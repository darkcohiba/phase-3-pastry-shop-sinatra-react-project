require 'faker'

puts "destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy"

User.destroy_all
Country.destroy_all
Recipe.destroy_all
Pastry.destroy_all


puts "🌱 Seeding sugar and flour..."


puts "users users"
u1 = User.create(name: "Fred")
u2 = User.create(name: "Tales")

puts "Creating countries..."


c1 = Country.create(flag: Faker::Nation.flag, name: "France", capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c2 = Country.create(flag: Faker::Nation.flag, name: "England", capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c3 = Country.create(flag: Faker::Nation.flag, name: "Germany", capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)


puts "pastries pastries..."
p1 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: "Gougères", description: Faker::Dessert.flavor, country_id: c1.id)
p2 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: "Mandelhörnchen" , description: Faker::Dessert.flavor, country_id: c3.id)
p3 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: "Kouign-amann", description: Faker::Dessert.flavor, country_id: c1.id)
p4 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: "Pasty", description: Faker::Dessert.flavor, country_id: c2.id)

puts "Creating recipes..."
r1 = Recipe.create(pastry_id: p1.id, name: Faker::Music::Phish.song, user_id: u1.id, rating: Faker::Number.between(from: 1, to: 10), description: Faker::Quote.matz, prep_time: "3 hours", bake_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)
r2 = Recipe.create(pastry_id: p2.id, name: Faker::Music::Phish.song, user_id: u1.id, rating: Faker::Number.between(from: 1, to: 10), description: Faker::Quote.matz, prep_time: "3 hours", bake_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)
r3 = Recipe.create(pastry_id: p3.id, name: Faker::Music::Phish.song, user_id: u2.id, rating: Faker::Number.between(from: 1, to: 10), description: Faker::Quote.matz, prep_time: "3 hours", bake_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)
r4 = Recipe.create(pastry_id: p4.id, name: Faker::Music::Phish.song, user_id: u2.id, rating: Faker::Number.between(from: 1, to: 10), description: Faker::Quote.matz, prep_time: "3 hours", bake_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)


puts "✅ Done seeding!"
