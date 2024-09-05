class Recipe < ApplicationRecord
  include PgSearch::Model

  belongs_to :author
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  pg_search_scope :search_by_ingredients,
                  associated_against: {
                    ingredients: :name
                  },
                  using: {
                    tsearch: { prefix: true },
                    trigram: { threshold: 0.3 }
                  }

  validates :title, presence: true
end
