class DosesController < ApplicationController
before_action :set_cocktail

  def new
    @dose = @cocktail.doses.build
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    @new_dose = Dose.new(dose_params)
    @new_dose.cocktail = @cocktail
    @ingredients = Ingredient.all
    if @new_dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
