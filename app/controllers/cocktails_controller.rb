class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.order(name: :asc)
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


  def edit
    @cocktail = Cocktail.find(params[:id])
  end


  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path
  end




  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :picture)
  end


end
