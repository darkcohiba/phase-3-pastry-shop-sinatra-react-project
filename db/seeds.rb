require 'faker'

puts "🌱 Seeding sugar and flour..."

puts "pastries pastries..."
p1 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: Faker::Dessert.variety, description: Faker::Dessert.flavor, country_id: c1, recipe_id: r1)
p2 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: Faker::Dessert.variety, description: Faker::Dessert.flavor, country_id: c1, recipe_id: r1)
p3 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: Faker::Dessert.variety, description: Faker::Dessert.flavor, country_id: c1, recipe_id: r1)
p4 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-1200-500x500.jpg", name: Faker::Dessert.variety, description: Faker::Dessert.flavor, country_id: c1, recipe_id: r1)

puts "Creating recipes..."
r1 = Recipe.create(name: Faker::Music::Phish.song, description: Faker::Quote.matz, prep_time: "3 hours". cook_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)
r2 = Recipe.create(name: Faker::Music::Phish.song, description: Faker::Quote.matz, prep_time: "3 hours". cook_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)
r3 = Recipe.create(name: Faker::Music::Phish.song, description: Faker::Quote.matz, prep_time: "3 hours". cook_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)
r4 = Recipe.create(name: Faker::Music::Phish.song, description: Faker::Quote.matz, prep_time: "3 hours". cook_time: "1 hour", total_time: "4 hours", recipe_ingredients: Faker::Food.ingredient, recipe_instructions: Faker::Coffee.notes)

puts "Creating countries..."

c1 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c2 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c3 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c4 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c5 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c6 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)
c7 = Countries.create(flag: Faker::Nation.flag, name: Faker::Nation.nationality, capital_city: Faker::Nation.capital_city, sport: Faker::Nation.national_sport)

puts "✅ Done seeding!"
