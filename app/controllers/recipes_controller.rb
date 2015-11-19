class RecipesController < ApplicationController

  # index
  def index
    @recipes = Recipe.all
  end

  # new
  def new
    @recipe = Recipe.new
  end

  # create
  def create
    @recipe = current_user.recipes.create!(recipe_params)
    @amount = Amount.where(recipe_id: params[:id])
    redirect_to recipe_path(@recipe)
  end

  #show
  def show
    @recipe = Recipe.find(params[:id])
    @amount = Amount.where(recipe_id: params[:id])
  end

  # edit
  def edit
    @recipe = Recipe.find(params[:id])
  end

  # update
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  # destroy
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.amounts.destroy_all
    @recipe.favorites.destroy_all
    @recipe.destroy
    redirect_to recipes_path
  end

  def add_favorite
    authenticate_user!
    @recipe = Recipe.find(params[:id])
    @recipe.favorites.create(user: current_user)
    redirect_to recipe_path(@recipe)
  end

  def remove_favorite
    authenticate_user!
    @recipe = Recipe.find(params[:id])
    @recipe.favorites.destroy_all
    redirect_to recipe_path(@recipe)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :photo, :url, :description, :steps)
  end

end
