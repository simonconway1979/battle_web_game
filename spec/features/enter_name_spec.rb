require 'spec_helper'
RSpec.feature "Sets their battle name", :type => :feature do
    scenario "lands on battle page and enters their usernames" do
      visit "/"

      fill_in :player_1_name, with:  "Jack"
      fill_in :player_2_name, with:  "Elizabeth"
      click_button("Submit")

      expect(page).to have_text("Jack VS Elizabeth successfully created")
    end
end
