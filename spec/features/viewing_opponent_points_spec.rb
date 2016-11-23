require 'spec_helper'
RSpec.feature "see player 2 hit points", :type => :feature do
  scenario "player 1 wants to view player 2 hit points" do
    visit "/play"
    expect(page).to have_content("Player 1 Hit points Player 2 points")
  end
end
