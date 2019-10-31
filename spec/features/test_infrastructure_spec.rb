feature "Battle" do
   scenario "Players fill in their name" do
     visit "/"
     fill_in "playeronename", :with => "Arjun"
     fill_in "playertwoname", :with => "Nat"
     click_button "Submit"
     expect(page).to have_text("Arjun vs. Nat")
   end
end
