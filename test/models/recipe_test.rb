require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  def setup
    @author = Author.create!(name: "John Doe")
    @recipe = Recipe.new(title: "Test Recipe", author: author)
  end

  test "should be valid" do
    assert recipe.valid?
  end

  test "should be invalid without a title" do
    recipe.title = nil
    assert_not recipe.valid?
  end

  test "should be invalid without an author" do
    recipe.author = nil
    assert_not recipe.valid?
  end

  private

  attr_reader :recipe, :author
end
