class StepsIngredientsJoin < ApplicationRecord
  belongs_to :recipe_step
  belongs_to :ingredient
end
