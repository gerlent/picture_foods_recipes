class RecipeQueryController < ActionController::Base

    api :GET, 'search_recipes'
    param :ingredients, String, desc: 'comma seperated list of ingredients with a score of the match'
    def search
      ingredient_names = params['ingredients'].split(',')

      ingredient_matches = ingredient_names.map do |ingredient_name|
        Ingredient.find_by('lower(name) = ?', ingredient_name.downcase.strip)
      end.compact.uniq

      ingredient_ids = ingredient_matches.pluck(:id)

      matched_recipes = []

      ingredient_matches.each do |ingredient|
        recipe_ingredients = RecipeIngredient.where(ingredient: ingredient)
        matched_recipes = matched_recipes + recipe_ingredients.map{|ri| ri.recipe}
      end

      matched_recipes = matched_recipes.compact.uniq

      recipes_with_scores = []

      matched_recipes.each do |recipe|
        ingredient_count = recipe.ingredients.count
        matched_ingredients_count = recipe.ingredients.where(id: ingredient_ids).count
        score = ((matched_ingredients_count.to_f/ ingredient_count.to_f) * 100).to_i

        ingredients_with_amount = recipe.recipe_ingredients.map do |ri|
          {
            ingredient: ri.ingredient.name,
            amount: ri.amount,
            amount_in_grams: ri.amount_in_grams
          }
        end

        recipes_with_scores << 
        {
          score: score,
          recipe: recipe.as_json,
          ingredients: ingredients_with_amount
        }
      end

      recipes_with_scores = recipes_with_scores.sort_by { |rwc| rwc[:score] }.reverse

      render json: recipes_with_scores
    end
end
