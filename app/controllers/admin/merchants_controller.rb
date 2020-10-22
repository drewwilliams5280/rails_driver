class Admin::MerchantsController < ApplicationController
  def show
    @merchant = RailsEngineFacade.create_merchant(params[:id])
    RailsEngineFacade.get_merchant_revenue(@merchant)
  end

  def edit
    @merchant_id = params[:id]
  end
end
