require 'rails_helper'

RSpec.describe 'Admin dashboard page' do
  it "can get search for merchant names and not show duplicates if submit clicked twice" do
    visit '/admin'
    fill_in :search, with: 'sons'
    click_on 'Search for Merchants'
    expect(page).to have_content('Search Results for "sons"')
    expect(page).to have_content("Sons")
    expect(page).to_not have_content("14 results")
  end
end