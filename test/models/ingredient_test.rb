require "test_helper"

class IngredientTest < ActiveSupport::TestCase
  def setup
    @ingredient = Ingredient.new(name: "1 egg")
  end

  test "should be valid" do
    assert ingredient.valid?
  end

  test "should be invalid without a name" do
    ingredient.name = nil
    assert_not ingredient.valid?
  end

  private

  attr_reader :ingredient
end
