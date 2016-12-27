class StepsIngredientsJoin < ApplicationRecord
  belongs_to :fk_ingredient
  belongs_to :fk_step
end
