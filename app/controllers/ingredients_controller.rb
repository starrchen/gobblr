class IngredientsController < ApplicationController

  # index
  def index
    @ingredients = Ingredient.all
  end

  # new
  def new
    authenticate_user!
    @ingredient = Ingredient.new
  end

  # create
  def create
    authenticate_user!
    @ingredient = Ingredient.create!(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  #show
  def show
    @ingredient = Ingredient.find(params[:id])
    # AM: Do you use `where` because there might be multiple amounts for a given ingredient? If so, `@amounts` would be a more apt name.
    # AM: Otherwise, would use `find(_by)` instead of `where` so you know exactly what to expect.
    @amount = Amount.where(ingredient_id: params[:id])
  end

  # edit
  def edit
    authenticate_user!
    @ingredient = Ingredient.find(params[:id])
  end

  # update
  def update
    authenticate_user!
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  # destroy
  def destroy
    authenticate_user!
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
