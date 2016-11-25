require 'spec_helper'

RSpec.feature "Change turn and second player attacks", :type => :feature do

scenario "after an attack we change turns and the second player attacks" do
  sign_in_and_play
  click_button("Attack!")
  click_button("Dish out more pain!!!")
  click_button("Attack!")
  click_button("Dish out more pain!!!")
    expect(page).to have_content("Elizabeth now has 50 hitpoints")
    expect(page).to have_content("Jack now has 50 hitpoints")
end
end
