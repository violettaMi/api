class Recipe < ApplicationRecord
  belongs_to :author
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :title, presence: true
end
