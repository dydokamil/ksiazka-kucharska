class CreateStepsIngredientsJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :steps_ingredients_joins do |t|
      t.references :recipe_step, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
