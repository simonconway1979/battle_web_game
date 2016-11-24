require './app'
require 'spec_helper'

RSpec.feature "Attack", :type => :feature do

  scenario "Confirm attack" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("You have administered a slap round the chops to Mal!")
  end

  scenario "Player 1 views Player 2's hit points" do
    sign_in_and_play
    click_button("View player 2's HP")
    expect(page).to have_text("100 HP")
  end

  scenario "After a slap check players hitpoints ahve been reduced" do
    sign_in_and_play
    one_slap_round
    expect(page).to have_text("Mal: 80 HP")
  end

  scenario "We want to switch turns" do
    sign_in_and_play
    one_slap_round
    one_slap_round
    expect(page).to have_text("George: 80 HP")
  end

end
