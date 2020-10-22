class RailsEngineFacade

  def self.create_item(id)
    item_data = RailsEngineService.fetch_item_details(id)
    Item.new(item_data[:data])
  end

  def self.create_merchant(id)
    merchant_data = RailsEngineService.fetch_merchant_details(id)
    MerchantPoro.new(merchant_data[:data])
  end

  def self.get_merchant_revenue(merchant)
    revenue_data = RailsEngineService.fetch_merchant_revenue(merchant.id)
    total_revenue = revenue_data[:data][:attributes][:revenue]
    merchant.revenue = total_revenue
  end

  def self.find_items(search_term)
    items_data = RailsEngineService.find_items(search_term)
    items_data[:data].map do |data|
      Item.new(data)
    end
  end

end