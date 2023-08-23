require "rails_helper"

RSpec.describe "Parks Search", type: :feature do
  describe "as a user, when I visit the search" do
    it "displays a form to search parks by state" do
      visit 

      expect(page).to have_content("Search Parks by State")
      expect(page)
    end
  end
end