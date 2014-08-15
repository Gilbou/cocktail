class DosesController < ApplicationController

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    cocktail.doses.create(dose_params)
    redirect_to cocktail
  end


  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end


  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :amount)
  end

end
