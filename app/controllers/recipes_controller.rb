class RecipesController < ApplicationController
  def index
    if params[:ingredients].present?
      ingredients = params[:ingredients].split(',').map(&:strip) # Split input by comma and trim spaces
      @recipes = Recipe.search_by_ingredients(ingredients)
    else
      @recipes = Recipe.all
    end
  end
end
