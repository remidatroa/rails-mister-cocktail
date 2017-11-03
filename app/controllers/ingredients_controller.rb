class IngredientsController < ApplicationController
  before_action :set_cocktail
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @cocktail
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
