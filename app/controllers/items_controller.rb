require 'alma_rest_api'

class ItemsController < ApplicationController
  def index
  end

  def show
    item = AlmaRestApi.get "/items?item_barcode=#{params[:id]}"
    respond_to do |format|
      format.json { render json: item }
    end
  end

  def update
    begin
      item = AlmaRestApi.put params[:link], params.slice(:item_data)
      render json: item
    rescue => e
      render json: { "error" => e.message }, :status => :bad_request
    end
  end
end
