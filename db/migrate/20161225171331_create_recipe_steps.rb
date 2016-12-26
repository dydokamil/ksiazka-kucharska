class CreateRecipeSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_steps do |t|
      t.integer :number
      t.string :instructions
      t.integer :prep_time
      t.integer :cook_time
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
