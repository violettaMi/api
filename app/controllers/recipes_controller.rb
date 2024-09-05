class RecipesController < ApplicationController
  def index
    if params[:ingredients].present?
      ingredients = params[:ingredients].split(',').map(&:strip)

      @recipes = Recipe.search_by_ingredients(ingredients).page(params[:page]).per(10)
    else
      @recipes = Recipe.all #TODO: think what to show
    end
  end
end
