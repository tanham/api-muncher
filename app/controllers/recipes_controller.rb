require_dependency '../../lib/edamam_api_wrapper'
require_dependency '../../lib/recipe'

class RecipesController < ApplicationController
  def index
    @recipes = EdamamApiWrapper.list_recipes(params[:query])
  end

  def show
    # TODO: currently does not hit this controller action
    @recipe = EdamamApiWrapper.show_recipe(params[:uri])
    unless @recipe
      head :not_found
    end
  end
end
