class ItemsController < ApplicationController
  def show
    @item = RailsEngineFacade.create_item(params[:id])
    @merchant = RailsEngineFacade.create_merchant(@item.merchant_id)
  end
end
