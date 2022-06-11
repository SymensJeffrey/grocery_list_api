class ItemsController < ApplicationController
  def index
    url = https://api.spoonacular.com/food/ingredients/search?query=a
    render json: items
  end
end
