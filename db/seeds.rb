# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.destroy_all
Ingredient.destroy_all

admin = User.create([
  {email: "starr@starr.com",
   encrypted_password: }
  ])

recipes = Recipe.create([
  {name: "The Turkey",
   description: "Guarantee that the star of the meal has juicy meat and crispy brown skin by using a baking steel/stone",
   photo: "http://www.seriouseats.com/recipes/assets_c/2014/11/20141113-baking-steel-turkey-recipe-8-thumb-1500xauto-414886.jpg",
   url: "http://www.seriouseats.com/recipes/2014/11/the-best-simple-roast-turkey-gravy-recipe.html",
   steps: "1) Set oven rack to lowest position and place a baking stone or baking steel on it. Preheat oven to 500°F. Allow to preheat for at least 45 minutes before adding turkey. \r\n2) Meanwhile, rinse turkey and carefully pat dry with paper towels. \r\n3) Season generously with salt and pepper. \r\n4)Set breast side up in a V-rack over foil-lined rimmed baking sheet. \r\n5) Transfer rimmed baking sheet with turkey directly to the baking stone. Immediately close oven and reduce oven temperature to 300°F. Roast until golden brown and deepest part of breast registers 150°F on an instant read thermometer and legs register at least 165°F, 3 to 4 hours total. \r\n6) Remove from oven and let rest at least 30 minutes before carving.",
   user_id: 1},

  {name: "Mashed Potatoes",
   description: "Amazingly fluffy mashed potatoes that will proudly stand on your Thanksgiving dinner plate",
   photo: "http://www.seriouseats.com/recipes/assets_c/2015/08/20150207-food-lab-mashed-potatoes-creamed-spinach-1-thumb-1500xauto-426185.jpg",
   url: "http://www.seriouseats.com/recipes/2010/11/ultra-fluffy-mashed-potatoes-recipe.html",
   steps: "1) Peel potatoes and cut into rough chunks about 1 to 2-inches cubed. \r\n2) Transfer to a bowl of cold water to rinse. Change water two or three times until it runs clear. \r\n3) Bring 4 quarts of water to a boil in a Dutch oven or large stockpot over high heat. Add potatoes and cook until completely tender, about 15 minutes. \r\n4) Drain potatoes in colander and rinse under hot running water for 30 seconds to wash away excess starch. \r\n5) Set ricer or food mill over now-empty pot and pass potatoes through. (Or mash with a masher or fork) \r\n6) Add milk and butter and fold gently with rubber spatula to combine. Season to taste with salt and pepper.",
   user_id: 1},

  {name: "Gravy",
   description: "Use the drippings from the turkey (or a stock/broth of your choice) to make a gravy that will tie the entire meal together",
   photo: "http://www.seriouseats.com/recipes/assets_c/2015/10/20150923-Thanksgiving-spread-vicky-wasik-018-thumb-1500xauto-427109.jpg",
   url: "http://www.seriouseats.com/recipes/2013/11/basic-turkey-gravy-thanksgiving-recipe.html",
   steps: "1) Melt butter over medium high heat in medium saucepan. \r\n2) Whisk in flour and cook, stirring frequently, until golden blonde, about 2 minutes. \r\n3) Gradually whisk in turkey drippings or stock in a steady stream. \r\n4) Bring to a boil, reduce to a simmer, and cook until reduced to 3 cups, 10 to 15 minutes. \r\n5) Remove from heat and season with salt and pepper to taste. \r\nServe immediately or store in airtight container in refrigerator for up to a week, reheating over medium-low heat before serving.",
   user_id: 1},

  {name: "Pumpkin Pie",
   description: "It's not Thanksgiving without dessert, and this silky-smooth autumnal classic will have everyone forgetting they were full",
   photo: "http://www.seriouseats.com/recipes/assets_c/2015/10/20151017-smooth-pumpkin-pie-vicky-wasik-1-thumb-1500xauto-427226.jpg",
   url: "http://www.seriouseats.com/recipes/2012/11/extra-smooth-pumpkin-pie-recipe.html",
   steps: "Crust (makes 2 crusts, for 2 open pies or 1 closed pie): \r\n1) Combine two thirds of flour with sugar and salt in the bowl of a food processor. Pulse twice to incorporate.\r\n2) Spread butter chunks evenly over surface. Pulse until no dry flour remains and dough just begins to collect in clumps, about 25 short pulses. \r\n3) Use a rubber spatula to spread the dough evenly around the bowl of the food processor. Sprinkle with remaining flour and pulse until dough is just barely broken up, about 5 short pulses. Transfer dough to a large bowl.\r\n4) Sprinkle with water then using a rubber spatula, fold and press dough until it comes together into a ball. \r\n5) Divide ball in half. Form each half into a 4-inch disk. \r\n6) Wrap tightly in plastic and refrigerate for at least 2 hours before rolling and baking.\r\n6) Adjust oven rack to lower middle position. Place a heavy duty rimmed baking sheet on the rack and preheat oven to 425°F.  \r\n7) Roll pie dough into a circle roughly 12-inches in diameter. Transfer to a 9-inch pie plate. \r\n8) Using a pair of kitchen shears, trim the edges of the pie dough until it overhangs the edge of the pie plate by 1/2 an inch all the way around. \r\n9) Fold edges of pie dough down, tucking it under itself, working your way all the way around the pie plate until everything is well tucked. Use the forefinger on your left hand and the thumb and forefinger on your right hand to crimp the edges.\r\n10) When oven is ready, line chilled pie shell with foil or parchment paper and fill with weights (e.g. dried beans/baking beads), transfer to the preheated baking sheet, and bake for 15 minutes.\r\n11) Remove weights and liner, turn pie, and bake until the bottom crust is a golden brown, about 10 minutes. \r\n12)Remove pie shell from oven and allow to cool completely. \r\n \r\nMaking the Pie: \r\n1) Reduce oven heat to 350°F. \r\n2) In the bowl of a food processor, combine sugar, salt, cinnamon, ginger, and nutmeg, and pulse 3 times to mix. \r\n3) Add the cream cheese and pulse until a homogeneous paste forms. \r\n4) Add the pumpkin and butter and process for 30 seconds. \r\n5) Stop to scrape down the sides of the bowl, then process until the mixture is completely smooth, about 30 seconds longer. \r\n6) Add the eggs and process until completely smooth, scraping down sides as necessary. \r\nOptional: For extra-smooth pie, press the mixture through a fine mesh strainer or a chinois using the back of a ladle. \r\n7) Pour the mixture into prepared pie shell and smooth over the top with a rubber spatula. Rap the shell firmly against the counter a few times in order to release any air bubbles. \r\n8) Transfer to the baking sheet in the oven and bake for until the filling puffs slightly and the center only moves slightly when jiggled, 30 to 35 minutes, rotating the pie half way through baking. \r\n9) Allow the pie to cool for at least one hour before serving. (May be chilled for up to two days.)",
   user_id: 1},
  ])

ingredients = Ingredient.create([
  {name: "Flour"}, #1
  {name: "Butter"}, #2
  {name: "Salt"}, #3
  {name: "Pepper"}, #4
  {name: "Turkey"}, #5
  {name: "Potatoes"}, #6
  {name: "Pumpkin puree"}, #7
  {name: "Sugar"}, #8
  {name: "Eggs"}, #9
  {name: "Turkey drippings/stock"}, #10
  {name: "Milk"}, #11
  {name: "Water"}, #12
  {name: "Ground cinnamon"}, #13
  {name: "Ground ginger"}, #14
  {name: "Nutmeg"}, #15
  {name: "Cream cheese"},
  ])

amounts = Amount.create([
  #turkey ingredients
  {recipe_id: 1,
  ingredient_id: 5,
  quantity: "one 10-12 lb bird, neck and giblets reserved"},

  {recipe_id: 1,
  ingredient_id: 3,
  quantity: "generous, for seasoning"},

  {recipe_id: 1,
  ingredient_id: 4,
  quantity: "generous, for seasoning"},

  #mashed potatoes ingredients
  {recipe_id: 2,
  ingredient_id: 6,
  quantity: "4 lbs"},

  {recipe_id: 2,
  ingredient_id: 11,
  quantity: "2 cups, preferably whole"},

  {recipe_id: 2,
  ingredient_id: 2,
  quantity: "12 tbsps, room temperature"},

  {recipe_id: 2,
  ingredient_id: 3,
  quantity: "to taste"},

  {recipe_id: 2,
  ingredient_id: 4,
  quantity: "to taste"},

  #gravy ingredients
  {ingredient_id: 1,
  recipe_id: 3,
  quantity: "1/4 cup"},

  {ingredient_id: 2,
  recipe_id: 3,
  quantity: "1/4 cup"},

  {ingredient_id: 10,
  recipe_id: 3,
  quantity: "4 cups"},

  {ingredient_id: 3,
  recipe_id: 3,
  quantity: "to taste"},

  {ingredient_id: 4,
  recipe_id: 3,
  quantity: "to taste"},

  #pumpkin pie ingredients
  {ingredient_id: 1,
  recipe_id: 4,
  quantity: "2 1/2 cups"},

  {ingredient_id: 8,
  recipe_id: 4,
  quantity: "2 tbsps for pie crust"},

  {ingredient_id: 8,
  recipe_id: 4,
  quantity: "6 oz for filling"},

  {ingredient_id: 3,
  recipe_id: 4,
  quantity: "1 tsp"},

  {ingredient_id: 2,
  recipe_id: 4,
  quantity: "20 tbsps for pie crust"},

  {ingredient_id: 2,
  recipe_id: 4,
  quantity: "4 tbsps, melted and cooled, for filling"},

  {ingredient_id: 12,
  recipe_id: 4,
  quantity: "6 tbsps, cold"}, #end pie crust ingredients

  {ingredient_id: 3,
  recipe_id: 4,
  quantity: "1/2 tsp"},

  {ingredient_id: 13,
  recipe_id: 4,
  quantity: "1 tsp"},

  {ingredient_id: 14 ,
  recipe_id: 4,
  quantity: "1 tsp"},

  {ingredient_id: 15,
  recipe_id: 4,
  quantity: "1/2 tsp, use freshly grated if available"},

  {ingredient_id: 16,
  recipe_id: 4,
  quantity: "8 oz, room temperature"},

  {ingredient_id: 7,
  recipe_id: 4,
  quantity: "15 oz"},

  {ingredient_id: 9,
  recipe_id: 4,
  quantity: "3, large"},
  ])
