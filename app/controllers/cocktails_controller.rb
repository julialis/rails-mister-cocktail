class CocktailsController < ApplicationController
before_action

  def index
    @cocktails = Cocktail.all
  end

  def show

  end

  def new
  end

  def create
  end

  def update
  end

  private

  def set_cocktail
  end

end
