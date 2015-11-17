class IngredientsController < ApplicationController

  # index
  def index
    @ingredients = Ingredient.all
  end

  # new
  def new
    @ingredient = Ingredient.new
  end

  # create
  def create
    @ingredient = Ingredient.create!(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  #show
  def show
    @ingredient = Ingredient.find(params[:id])
    @amount = Amount.where(ingredient_id: params[:id])
  end

  # edit
  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  # update
  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  # destroy
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
