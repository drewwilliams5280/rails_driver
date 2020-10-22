require 'rails_helper'

RSpec.describe 'Items show page' do
  it "can get merchant's name" do
    visit '/items/10'
    expect(page).to have_content("Item Quidem Suscipit")
    expect(page).to have_content("Schroeder-Jerde")
  end
end