class RecipeStep < ApplicationRecord
  belongs_to :recipe
  has_many :steps_ingredients_joins
  has_many :ingredients, through: :steps_ingredients_joins
end
