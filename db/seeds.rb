# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Product.create({ name: 'water bottle', description: 'stores water', price_in_cents: 20})

p2 = Product.create({ name: 'joey', description: 'stores water', price_in_cents: 80})

p3 = Product.create({ name: 'rob', description: 'stores beer', price_in_cents: 5})
