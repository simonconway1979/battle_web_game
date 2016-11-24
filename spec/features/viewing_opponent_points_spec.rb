require 'spec_helper'
RSpec.feature "see player 2 hit points", :type => :feature do
  scenario "player 1 wants to view player 2 hit points" do
    sign_in_and_play
    visit "/play"
    expect(page).to have_content("Elizabeth now has 60 hitpoints")
  end
end
