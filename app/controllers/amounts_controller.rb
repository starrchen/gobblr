class AmountsController < ApplicationController

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @amounts = Recipe.amounts.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredients = Ingredient.all
    @amount = Amount.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredients = Ingredient.all
    @amount = Amount.create(amount_params)
    redirect_to recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @amount = Amount.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @amount = Amount.find(params[:id])
    @amount.update(amount_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @amount = Amount.find(params[:id])
    @amount.destroy
    redirect_to recipe_path(@recipe)
  end

  private
  def amount_params
    params.require(:amount).permit(:recipe_id, :ingredient_id, :quantity)
  end

end
