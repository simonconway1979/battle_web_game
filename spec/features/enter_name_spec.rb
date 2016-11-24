require 'spec_helper'
RSpec.feature "Sets their battle name", :type => :feature do
    scenario "lands on battle page and enters their usernames" do
      sign_in_and_play
      expect(page).to have_content("Jack VS Elizabeth successfully created")
    end
end
