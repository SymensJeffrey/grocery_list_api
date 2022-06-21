class ListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    lists = List.all 
    render json: lists.as_json
  end

  def create
    list = List.new(
      items: []
    )
    if list.save
        render json: { message: "List created"}, status: :created
    else
      render json: { errors: list.errors.full_messages }, status: :bad_request
    end
  end
end
