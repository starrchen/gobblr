class AddPhotoAndUrlToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :photo, :string
    add_column :recipes, :url, :string
  end
end
