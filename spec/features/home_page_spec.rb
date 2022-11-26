require "rails_helper"

RSpec.describe "home page" do
  before(:each) do
    visit "/"
  end
  it "user can see some unclickable texts" do
    expect(page).to have_content("Find your muse")
    expect(page).to have_content("DAILY FAIRIES")
    expect(page).to have_content("Magical creatures for cheap people!")
    expect(page).to have_content("Change your life with magic by renting one of our fairies from around the universe.")
  end

  it "displays information for all fairies" do
    click_on "VIEW FAIRIES"
    expect(current_path).to eq(fairies_path)
  end
end
