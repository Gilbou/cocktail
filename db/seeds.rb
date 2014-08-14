# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cocktail.create(name: "Mojito", description: "Très parfumé, légèrement sucré et avec une pointe d'acidité, ce Cocktail élégant et cosmopolite a fait sa place parmi les grands classiques et c'est aujourd'hui le Cocktail")
Cocktail.create(name: "Margarita", description: "La Margarita est un cocktail à base de tequila, inventé par des Américains au Mexique.")
Cocktail.create(name: "Sex on the beach", description: "Le Sex on the beach est un cocktail alcoolisé créé par le TGI Friday's")
Cocktail.create(name: "Soupe de champagne", description: "La Soupe champenoise est un apéritif traditionnel de la Champagne")
Cocktail.create(name: "Caiprinha", description: "La caipirinha est un cocktail brésilien préparé à base de cachaça, de sucre de canne et de citron vert.")

Ingredient.create(name: "Beurre")
Ingredient.create(name: "Cacahuètes")
Ingredient.create(name: "Caramel")
Ingredient.create(name: "Miel")
Ingredient.create(name: "Tabasco")
