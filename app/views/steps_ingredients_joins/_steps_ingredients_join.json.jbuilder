json.extract! steps_ingredients_join, :id, :recipe_step_id, :ingredient_id, :amount, :created_at, :updated_at
json.url steps_ingredients_join_url(steps_ingredients_join, format: :json)