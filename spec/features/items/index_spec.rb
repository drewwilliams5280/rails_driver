require 'rails_helper'

RSpec.describe 'Items index page' do
  it "can get search for item names and get results" do
    visit '/items'
    fill_in :search, with: 'Laud'
    click_on 'Submit'
    expect(page).to have_content("27 results")
    expect(page).to have_content("Laud")
  end
end