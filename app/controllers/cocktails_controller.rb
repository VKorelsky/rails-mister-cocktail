class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to :cocktails
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    cocktail = Cocktail.find(params[:id])
    cocktail.update(cocktail_params)
    redirect_to cocktail_path(cocktail)
  end

  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy!
    redirect_to :cocktails
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description)
  end
end
