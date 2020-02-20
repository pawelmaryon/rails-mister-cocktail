require 'faker' 
#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

20.times do
  ingredient = Ingredient.create(name: Faker::Food.ingredient)

  cocktail = Cocktail.create(
    name: Faker::Beer.name
  )

  if cocktail.valid? && ingredient.valid?
    Dose.create(
      description: Faker::Food.ingredient,
      cocktail: cocktail,
      ingredient: ingredient
    )
  end
end
 