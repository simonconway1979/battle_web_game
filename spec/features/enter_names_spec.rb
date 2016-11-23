require './app'
require 'spec_helper'

RSpec.feature "Beginning a fight", :type => :feature do
  scenario "Users enter their names" do
    visit "/"
    fill_in "player1", :with => "George"
    fill_in "player2", :with => "Mal"
    click_button "Save"
    expect(page).to have_text("George V Mal! Fight!!!")
  end

end
