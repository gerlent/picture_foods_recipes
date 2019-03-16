class SmoothieRecipe < Recipe
  include Obfuscatable
  obfuscate_id prefix: 'smth_rcp'
end
