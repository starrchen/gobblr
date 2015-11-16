# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.destroy_all
Ingredient.destroy_all

recipes = Recipe.create([
  {name: "The Turkey",
   description: "Guarantee that the star of the meal has juicy meat and crispy brown skin by using a baking steel/stone",
   photo: "http://www.seriouseats.com/recipes/assets_c/2014/11/20141113-baking-steel-turkey-recipe-8-thumb-1500xauto-414886.jpg",
   url: "http://www.seriouseats.com/recipes/2014/11/the-best-simple-roast-turkey-gravy-recipe.html"},

  {name: "Mashed Potatoes",
   description: "Amazingly fluffy mashed potatoes that will proudly stand on your Thanksgiving dinner plate",
   photo: "http://www.seriouseats.com/recipes/assets_c/2015/08/20150207-food-lab-mashed-potatoes-creamed-spinach-1-thumb-1500xauto-426185.jpg",
   url: "http://www.seriouseats.com/recipes/2010/11/ultra-fluffy-mashed-potatoes-recipe.html"},

  {name: "Gravy",
   description: "Use the drippings from the turkey (or a stock/broth of your choice) to make a gravy that will tie the entire meal together",
   photo: "http://www.seriouseats.com/recipes/assets_c/2015/10/20150923-Thanksgiving-spread-vicky-wasik-018-thumb-1500xauto-427109.jpg",
   url: "http://www.seriouseats.com/recipes/2013/11/basic-turkey-gravy-thanksgiving-recipe.html",
   steps: "1. Melt butter over medium high heat in medium saucepan. \r\n2. Whisk in flour and cook, stirring frequently, until golden blonde, about 2 minutes. \r\n3. Gradually whisk in turkey drippings or stock in a steady stream. \r\n4. Bring to a boil, reduce to a simmer, and cook until reduced to 3 cups, 10 to 15 minutes. \r\n5.Remove from heat and season with salt and pepper to taste. \r\nServe immediately or store in airtight container in refrigerator for up to a week, reheating over medium-low heat before serving."},

  {name: "Pumpkin Pie",
   description: "It's not Thanksgiving without dessert, and this autumnal classic will have everyone forgetting they were full",
   photo: "",
   url: ""},
  ])

ingredients = Ingredient.create([
  {name: "flour"},
  {name: "butter"},
  {name: "salt"},
  {name: "pepper"},
  {name: "turkey"},
  {name: "potatoes"},
  {name: "pumpkin puree"},
  {name: "sugar"},
  {name: "eggs"},
  ])

amounts = Amount.create([
  {ingredient_id: 5,
   recipe_id: 1,
   quantity: 8,
   units: "lbs"},

  {ingredient_id: 2,
   recipe_id: 2,
   quantity: 12,
   units: "tbsp"},

  {ingredient_id: 1,
   recipe_id: 3,
   quantity: 1, # may need to convert quantity data type to floats to account for 1/2, 1/3, 1/4, etc.
   units: "cup"},
  ])
