class DosesController < ApplicationController

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    cocktail.doses.create(dose_params)
    redirect_to cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :amount)
  end

end
