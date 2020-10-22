class MerchantPoro
  attr_reader :id, :name
  attr_accessor :revenue
  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @revenue = []
  end
end