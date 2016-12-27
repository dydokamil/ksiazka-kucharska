class CreateStepsIngredientsJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :steps_ingredients_joins do |t|
      t.integer :amount
      t.references :fk_ingredient, foreign_key: true
      t.references :fk_step, foreign_key: true

      t.timestamps
    end
  end
end
