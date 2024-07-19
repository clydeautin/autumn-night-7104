require 'rails-helper'

RSpec.describe "Welcome", type: :feature do
  
  describe "search" do
    it "shows me all the members related to the fire nation" do
      visit root_path
      fill_in "search", with: "fire nation"
      click_on "search"
      expect(page).to have_content("Fire Nation")
    end
  end
end