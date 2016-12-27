json.extract! steps_ingredients_join, :id, :amount, :fk_ingredient_id, :fk_step_id, :created_at, :updated_at
json.url steps_ingredients_join_url(steps_ingredients_join, format: :json)