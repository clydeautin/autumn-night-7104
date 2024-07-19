require 'rails_helper'

RSpec.describe "Welcome", type: :feature do
  
  describe "search" do
    it "shows me all the members related to the fire nation" do
      visit root_path
      select "Fire Nation", from: "nation"
      click_on "Search For Members"
      expect(page).to have_content("Fire Nation")
    end

    it "shows a lot of details on the page" do
      visit root_path
      select "Fire Nation", from: "nation"
      click_on "Search For Members"
      expect(page).to have_content("Fire Nation has 97 members")
      expect(page).to have_css(".member", count: 25)
      expect(page).to have_content("Name: Bully guard")
      expect(page).to have_content("Allies: Azula")
      expect(page).to have_content("Enemies: Sokka")
      expect(page).to have_content("Affiliation: Fire Nation")
    end
  end
end