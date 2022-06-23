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

  def show
    id = params[:id]
    url = "https://api.spoonacular.com/food/ingredients/#{id}/information"
    headers = {
      "x-api-key" => ENV["api-key"],
      params: {}
    }
    response = JSON.parse(RestClient.get(url, headers))
    render json: {
      'ID' => response['id'],
      'Name' => response['name']

    }
  end
end
