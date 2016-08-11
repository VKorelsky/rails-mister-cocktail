class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id].to_i)
    else
      render :new
    end
  end

  def destroy
    dose = Dose.find(params[:id])
    dose.destroy!

    cocktail_id = params[:cocktail_id].to_i
    redirect_to cocktail_path(cocktail_id.to_i)
  end

  private

  def dose_params
    params[:dose].store("cocktail_id", params[:cocktail_id].to_i)
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
