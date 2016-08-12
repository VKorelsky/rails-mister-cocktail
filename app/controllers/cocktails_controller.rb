class CocktailsController < ApplicationController

  def initialize
    @uploader = PhotoUploader.new
  end

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
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to :cocktails
    else
      render :new
    end
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
    params.require(:cocktail).permit(:name, :description, :photo, :photo_cache)
  end
end
