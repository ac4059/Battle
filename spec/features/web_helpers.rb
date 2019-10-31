def sign_in_and_play
  visit "/"
  fill_in "playeronename", :with => "Arjun"
  fill_in "playertwoname", :with => "Nat"
  click_button "Submit"
end
