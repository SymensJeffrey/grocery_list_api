class ListsController < ApplicationController
  def index
    list = List.all 
    render json: list.as_json
  end
end
