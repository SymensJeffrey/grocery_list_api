class ItemsController < ApplicationController
  def index
    url = "https://api.spoonacular.com/food/ingredients/search"
    headers = {
      "x-api-key" => ENV["api-key"],
      params: {query: params[:query]}
    }
    response = RestClient.get(url, headers)
    render json: response
  end
end
