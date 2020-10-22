require 'rails_helper'

RSpec.describe 'Admin merchants show page' do
  it "can get merchant's revenue" do
    visit '/admin/merchants/17'
    expect(page).to have_content("Ullrich-Moen")
    expect(page).to have_content("Revenue: $327384.31")
  end
end