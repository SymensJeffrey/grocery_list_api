class ItemsController < ApplicationController
  def index
    url = "https://api.spoonacular.com/food/ingredients/search?query=apple"
    headers = {
      "x-api-key" => "" 
    }
    resposne = RestClient.get(url, headers)
    render json: resposne
  end
end
