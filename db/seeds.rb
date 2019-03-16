# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Ingredient.destroy_all
Recipe.destroy_all

#ingredients

banana = FruitIngredient.create(name: 'Banana', description: 'a plain old banana', is_gram_based: false, calories_per_hundred_gram: 100)
apple = FruitIngredient.create(name: 'Apple', description: 'not the company', is_gram_based: false, calories_per_hundred_gram: 50)
orange = FruitIngredient.create(name: 'Orange', description: 'a plain old orange', is_gram_based: false, calories_per_hundred_gram: 50)
sugar = SugarIngredient.create(name: 'Sugar', description: 'plain old sugar', is_gram_based: true, calories_per_hundred_gram: 400)
salt = SpiceIngredient.create(name: 'Salt', description: 'plain old salt', is_gram_based: true, calories_per_hundred_gram: 10)
milk = DairyIngredient.create(name: 'Milk', description: 'plain old milk', is_gram_based: true, calories_per_hundred_gram: 50)
yogurt = DairyIngredient.create(name: 'Yogurt', description: 'plain old yogurt', is_gram_based: true, calories_per_hundred_gram: 60)
ice_cube = WaterIngredient.create(name: 'Ice Cube', description: 'not the rapper', is_gram_based: false, calories_per_hundred_gram: 10)
cashew = NutIngredient.create(name: 'Cashew', description: 'plain old cashews', is_gram_based: true, calories_per_hundred_gram: 500)
maple_syrup = SugarIngredient.create(name: 'Maple Syrup', description: 'Oh canada', is_gram_based: true, calories_per_hundred_gram: 250)
kale = VegetableIngredient.create(name: 'Kale', description: 'plain old kale', is_gram_based: true, calories_per_hundred_gram: 50)
celery = VegetableIngredient.create(name: 'Celery', description: 'plain old celery', is_gram_based: true, calories_per_hundred_gram: 10)
apple_juice = JuiceIngredient.create(name: 'Apple Juice', description: 'plain old apple juice', is_gram_based: true, calories_per_hundred_gram: 50)
lemon_juice = JuiceIngredient.create(name: 'Lemon Juice', description: 'plain old lemon juice', is_gram_based: true, calories_per_hundred_gram: 20)

#recipes

#orange banana smoothie

orange_banana_smoothie_recipe = SmoothieRecipe.create(name: 'Orange Banana Smoothie', time_to_prepare_in_minutes: 5, portions: 1)
orange_banana_smoothie_recipe.description = "In a blender, combine milk, oranges, banana, sugar, salt and yogurt. Blend for about 1 minute. Insert ice cubes, and blend until smooth. Pour into glasses and serve."

RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: banana, amount: 1)
RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: milk, amount_in_grams: 100)
RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: orange, amount: 2)
RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: sugar, amount_in_grams: 10)
RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: salt, amount_in_grams: 10)
RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: yogurt, amount_in_grams: 200)
RecipeIngredient.create(recipe: orange_banana_smoothie_recipe, ingredient: ice_cube, amount: 4)

#banana cashew smoothie

banan_cashew_smoothie_recipe = SmoothieRecipe.create(name: 'Banana-Cashew Smoothie', time_to_prepare_in_minutes: 360, portions: 1)
banan_cashew_smoothie_recipe.description = 
"How to Make It
Step 1
Place ½ cup water and the cashews in a blender.

Step 2
Cover and refrigerate until the cashews have softened, at least 6 hours (and up to overnight).

Step 3
Add the ice, banana, and maple syrup.

Step 4
Blend until smooth and frothy."

RecipeIngredient.create(recipe: banan_cashew_smoothie_recipe, ingredient: cashew, amount_in_grams: 100)
RecipeIngredient.create(recipe: banan_cashew_smoothie_recipe, ingredient: banana, amount: 1)
RecipeIngredient.create(recipe: banan_cashew_smoothie_recipe, ingredient: maple_syrup, amount_in_grams: 30)
RecipeIngredient.create(recipe: banan_cashew_smoothie_recipe, ingredient: ice_cube, amount: 4)

#kale apple smoothie

kale_apple_smothie_recipe = SmoothieRecipe.create(name: 'Kale-Apple Smoothie', time_to_prepare_in_minutes: 5, portions: 1)
kale_apple_smothie_recipe.description = 
"We like that this green smoothie is sweet but not cloyingly so. 
Apple juice gets the blender moving and banana acts to emulsify the kale and celery. 
This smoothie is best made in a high powered blender, but if you have a standard model here are some tips to help you puree to perfection. 
Remove the kale stems and tear the leaves into bite-size pieces. This will help prevent them from getting stuck around the blade. 
Chop the celery and banana into ½-inch pieces and really let ‘er rip for a minute or 2. 
Scrape down the sides of the blender as necessary and blend again for a straw-friendly sipper."

RecipeIngredient.create(recipe: kale_apple_smothie_recipe, ingredient: kale, amount_in_grams: 100)
RecipeIngredient.create(recipe: kale_apple_smothie_recipe, ingredient: celery, amount_in_grams: 30)
RecipeIngredient.create(recipe: kale_apple_smothie_recipe, ingredient: banana, amount: 1)
RecipeIngredient.create(recipe: kale_apple_smothie_recipe, ingredient: ice_cube, amount: 4)
RecipeIngredient.create(recipe: kale_apple_smothie_recipe, ingredient: apple_juice, amount_in_grams: 100)
RecipeIngredient.create(recipe: kale_apple_smothie_recipe, ingredient: lemon_juice, amount_in_grams: 10)