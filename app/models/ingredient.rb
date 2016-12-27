class Ingredient < ApplicationRecord
  has_many :steps_ingredients_joins
  has_many :recipe_steps, through: :steps_ingredients_joins
end
