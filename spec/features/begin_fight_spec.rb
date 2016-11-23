require './app'
require 'spec_helper'

RSpec.feature "Beginning a fight", :type => :feature do
  scenario "Users enter their names" do
    visit "/names"
    fill_in "Player 1", :with => "George"
    click_button "Save Player 1"
  end
end
