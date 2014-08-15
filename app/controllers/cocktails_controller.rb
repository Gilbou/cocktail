class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = @cocktail.doses.build
    @doses = @cocktail.doses.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :picture)
  end


end
