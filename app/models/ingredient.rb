class Ingredient < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 35 }
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end