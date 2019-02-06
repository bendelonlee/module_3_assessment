# As a user
# When I visit "/"
# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
require "rails_helper"

describe 'when I enter my zip code' do
  it 'shows me the 10 closest Electric and Propane stations with Name, Address, Fuel Types, Distance, and Access Times' do
    visit "/"
    fill_in :q, with: 80203
    click_on "Locate"
    expect(current_path).to eq("/search")
    expect(page).to have_css(".station", count: 10)
    within(first(".station")) do
      expect(page).to have_content("Name:")
      expect(page).to have_content("Address:")
      expect(page).to have_content("Fuel Types:")
      expect(page).to have_content("Distance:")
      expect(page).to have_content("Access Times:")
    end

    # And the stations should be limited to Electric and Propane

  end
end