require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  def setup
    @author = Author.new(name: "John Doe")
  end

  test "should be valid" do
    assert author.valid?
  end

  test "should be invalid without a name" do
    author.name = nil
    assert_not author.valid?
  end

  private

  attr_reader :author
end
