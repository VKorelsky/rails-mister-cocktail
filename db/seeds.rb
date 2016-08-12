# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredients = [
                "Mint",
                "Bitter",
                "Ice",
                "Whiskey",
                "Rhum",
                "Vodka",
                "simple syrup",
                "dry vermouth",
                "wet vermouth",
                "ice cubes",
                "cruches icebergs",
                "raspberry liqueur",
                "ginger ale",
                "tonic"
              ]

ingredient_array.each do |ingredient|
  Ingredient.create(ingredient)
end




