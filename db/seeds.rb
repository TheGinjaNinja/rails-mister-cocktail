# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Deleting cocktails"
Cocktail.destroy_all

puts "Deleting ingredients"
Ingredient.destroy_all

puts "Creating ingredients..."
ingredients = [
  {
    "name": "Light rum"
  },
  {
    "name": "Applejack"
  },
  {
    "name": "Gin"
  },
  {
    "name": "Dark rum"
  },
  {
    "name": "Sweet Vermouth"
  },
  {
    "name": "Strawberry schnapps"
  },
  {
    "name": "Scotch"
  },
  {
    "name": "Apricot brandy"
  },
  {
    "name": "Triple sec"
  },
  {
    "name": "Southern Comfort"
  },
  {
    "name": "Orange bitters"
  },
  {
    "name": "Brandy"
  },
  {
    "name": "Lemon vodka"
  },
  {
    "name": "Blended whiskey"
  },
  {
    "name": "Dry Vermouth"
  },
  {
    "name": "Amaretto"
  },
  {
    "name": "Tea"
  },
  {
    "name": "Champagne"
  },
  {
    "name": "Coffee liqueur"
  },
  {
    "name": "Bourbon"
  },
  {
    "name": "Tequila"
  },
  {
    "name": "Vodka"
  },
  {
    "name": "Añejo rum"
  },
  {
    "name": "Bitters"
  },
  {
    "name": "Sugar"
  },
  {
    "name": "Kahlua"
  },
  {
    "name": "demerara Sugar"
  },
  {
    "name": "Dubonnet Rouge"
  },
  {
    "name": "Lime juice"
  },
  {
    "name": "Irish whiskey"
  },
  {
    "name": "Apple brandy"
  },
  {
    "name": "Carbonated water"
  },
  {
    "name": "Cherry brandy"
  },
  {
    "name": "Creme de Cacao"
  },
  {
    "name": "Grenadine"
  },
  {
    "name": "Port"
  },
  {
    "name": "Coffee brandy"
  },
  {
    "name": "Red wine"
  },
  {
    "name": "Rum"
  },
  {
    "name": "Grapefruit juice"
  },
  {
    "name": "Ricard"
  },
  {
    "name": "Sherry"
  },
  {
    "name": "Cognac"
  },
  {
    "name": "Sloe gin"
  },
  {
    "name": "Apple juice"
  },
  {
    "name": "Pineapple juice"
  },
  {
    "name": "Lemon juice"
  },
  {
    "name": "Sugar syrup"
  },
  {
    "name": "Milk"
  },
  {
    "name": "Strawberries"
  },
  {
    "name": "Chocolate syrup"
  },
  {
    "name": "Yoghurt"
  },
  {
    "name": "Mango"
  },
  {
    "name": "Ginger"
  },
  {
    "name": "Lime"
  },
  {
    "name": "Cantaloupe"
  },
  {
    "name": "Berries"
  },
  {
    "name": "Grapes"
  },
  {
    "name": "Kiwi"
  },
  {
    "name": "Tomato juice"
  },
  {
    "name": "Cocoa powder"
  },
  {
    "name": "Chocolate"
  },
  {
    "name": "Heavy cream"
  },
  {
    "name": "Galliano"
  },
  {
    "name": "Peach Vodka"
  },
  {
    "name": "Ouzo"
  },
  {
    "name": "Coffee"
  },
  {
    "name": "Spiced rum"
  },
  {
    "name": "Water"
  },
  {
    "name": "Espresso"
  },
  {
    "name": "Angelica root"
  },
  {
    "name": "Orange"
  },
  {
    "name": "Cranberries"
  },
  {
    "name": "Johnnie Walker"
  },
  {
    "name": "Apple cider"
  },
  {
    "name": "Everclear"
  },
  {
    "name": "Cranberry juice"
  },
  {
    "name": "Egg yolk"
  },
  {
    "name": "Egg"
  },
  {
    "name": "Grape juice"
  },
  {
    "name": "Peach nectar"
  },
  {
    "name": "Lemon"
  },
  {
    "name": "Firewater"
  },
  {
    "name": "Lemonade"
  },
  {
    "name": "Lager"
  },
  {
    "name": "Whiskey"
  },
  {
    "name": "Absolut Citron"
  },
  {
    "name": "Pisco"
  },
  {
    "name": "Irish cream"
  },
  {
    "name": "Ale"
  },
  {
    "name": "Chocolate liqueur"
  },
  {
    "name": "Midori melon liqueur"
  },
  {
    "name": "Sambuca"
  },
  {
    "name": "Cider"
  },
  {
    "name": "Sprite"
  },
  {
    "name": "7-Up"
  },
  {
    "name": "Blackberry brandy"
  },
  {
    "name": "Peppermint schnapps"
  },
  {
    "name": "Creme de Cassis"
  },
  {
    "name": "Jack Daniels"
  }
]
Ingredient.create(ingredients)

puts "Creating one cocktail"

file = URI.open('https://www.pamperedchef.ca/iceberg/com/recipe/1445579-lg.jpg')
cocktail = Cocktail.create(name:"Gin Garden")
cocktail.photo.attach(io: file, filename: 'gin_garden.jpg', content_type: 'image/png')

