class AddStepsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :steps, :string
  end
end
