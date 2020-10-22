class ItemsController < ApplicationController
  def index
    @items = RailsEngineFacade.find_items(params[:search]) if params[:search]
  end

  def show
    @item = RailsEngineFacade.create_item(params[:id])
    @merchant = RailsEngineFacade.create_merchant(@item.merchant_id)
  end
end
