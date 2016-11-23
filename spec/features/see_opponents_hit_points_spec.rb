require './app'
require 'spec_helper'

RSpec.feature "Check opponent's hit points", :type => :feature do

  before do
    visit '/'
    fill_in "player1", :with => "George"
    fill_in "player2", :with => "Mal"
    click_button "Save"
  end

  scenario "Player 1 views Player 2's hit points" do
    visit "/play"
    click_button("View Player 2's HP")
    expect(page).to have_text("20 HP")
  end
end
