# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i1 = Ingredient.create(name: "lemon")
i2 = Ingredient.create(name: "ice")
i3 = Ingredient.create(name: "mint leaves")

c1 = Cocktail.create(name: "MLKJ hiver")
c2 = Cocktail.create(name: "MLKJ été")

Dose.create(ingredient: i1, cocktail: c1)
Dose.create(ingredient: i1, cocktail: c2)
Dose.create(ingredient: i2, cocktail: c2)
Dose.create(ingredient: i3, cocktail: c1)
Dose.create(ingredient: i3, cocktail: c2)

