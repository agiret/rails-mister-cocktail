Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

    cocktail = Cocktail.create!(name: 'testy')
    ingredient = Ingredient.create!(name: "ice")
    cocktail.doses.create(ingredient: ingredient, description: "A lot!")

    p cocktail
    p ingredient


    p Dose.all
    p "========================"
    p ingredient.destroy
