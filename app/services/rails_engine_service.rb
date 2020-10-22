class RailsEngineService

  def self.fetch_item_details(id)
    to_json("/api/v1/items/#{id}")
  end

  def self.fetch_merchant_details(id)
    to_json("/api/v1/merchants/#{id}")
  end

  def self.fetch_merchant_revenue(id)
    to_json("/api/v1/merchants/#{id}/revenue")
  end

  def self.to_json(url, params = {})
    private
    response = conn.get(url) do |f|
      f.params = params
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    private
    Faraday.new(url: 'http://localhost:3000')
  end

end