class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @doses.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/new"
    end
  end
  
  private
  def dose_params
    params.require(:dose).permit(:ingredient, :description)
  end
end
