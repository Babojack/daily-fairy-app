require "rails_helper"

RSpec.feature "home page" do
  scenario "user can see some unclickable texts" do
    visit "/"
    expect(page).to have_content("Find your muse")
    expect(page).to have_content("DAILY FAIRIES")
    expect(page).to have_content("Magical creatures for cheap people!")
    expect(page).to have_content("Change your life with magic by renting one of our fairies from around the universe.")
  end
end
