class DosesController < ApplicationController
before_action :set_cocktail

  def new
    @dose = @cocktail.doses.build
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    @ingredients = Ingredient.all
    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end
  #     redirect_to :new
  #   end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
