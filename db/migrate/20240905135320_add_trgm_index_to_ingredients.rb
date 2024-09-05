class AddTrgmIndexToIngredients < ActiveRecord::Migration[7.2]
  def change
    enable_extension 'pg_trgm'

    add_index :ingredients, :name, using: :gin, opclass: :gin_trgm_ops
  end
end
