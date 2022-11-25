require "rails_helper"

RSpec.feature "home page" do
  scenario "user can see the link that leads to all fairies" do
    visit "/"
  end
end
