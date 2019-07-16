class Api::V1::ShopsController < ApplicationController
  protect_from_forgery
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
