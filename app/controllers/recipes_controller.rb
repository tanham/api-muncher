require_dependency '../../lib/edamam_api_wrapper'
require_dependency '../../lib/recipe'

class RecipesController < ApplicationController
  # TODO: pass in the proper parameter
  def index
    @query = params[:query] || "chocolate"
    @recipes = EdamamApiWrapper.list_recipes(@query)
  end

  def show
  end
end
