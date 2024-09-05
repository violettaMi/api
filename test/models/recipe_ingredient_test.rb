require 'test_helper'

class RecipeIngredientTest < ActiveSupport::TestCase
  setup do
    @recipe_ingredient = recipe_ingredients(:recipe_ingredient_one)
  end

  test "should be valid" do
    assert @recipe_ingredient.valid?
  end

  test "should belong to a recipe" do
    assert_not_nil @recipe_ingredient.recipe
  end

  test "should belong to an ingredient" do
    assert_not_nil @recipe_ingredient.ingredient
  end
end
