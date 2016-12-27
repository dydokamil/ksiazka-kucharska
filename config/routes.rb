Rails.application.routes.draw do
  resources :steps_ingredients_joins
  resources :ingredients
  resources :recipe_steps
  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'recipes#index'
end
