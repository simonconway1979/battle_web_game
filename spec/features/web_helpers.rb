def sign_in_and_play
  visit '/'
  fill_in "player1", :with => "George"
  fill_in "player2", :with => "Mal"
  click_button "Save"
end

def one_slap_round
  click_button("Attack")
  click_link("Wanna dash out some more pain?")
end
