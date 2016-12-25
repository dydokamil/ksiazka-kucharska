json.extract! recipe_step, :id, :instructions, :prep_time, :cook_time, :recipe_id, :created_at, :updated_at
json.url recipe_step_url(recipe_step, format: :json)