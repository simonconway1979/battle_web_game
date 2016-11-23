require 'spec_helper'
RSpec.feature "enter name, submit form, see names on screen", :type => :feature do
    scenario "Sets their battle name" do
      visit "/"

      fill_in :player_1_name, with:  "Jack"
      fill_in :player_2_name, with:  "Elizabeth"
      click_button("Submit")

      expect(page).to have_text("Jack VS Elizabeth successfully created")
    end
end
