class Recipe < ApplicationRecord
  validates :name, :description, presence: true
  has_many :recipe_steps
end
