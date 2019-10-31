feature "Enter names" do
   scenario "submitting names" do
     visit "/"
     fill_in "playeronename", :with => "Arjun"
     fill_in "playertwoname", :with => "Nat"
     click_button "Submit"
     expect(page).to have_text("Arjun vs. Nat")
   end
end

feature "View hit points" do
   scenario "see Player 2's hit points" do
     visit "/"
     fill_in :playeronename, with: 'Arjun'
     fill_in :playertwoname, with: 'Nat'
     click_button "Submit"
     expect(page).to have_text("Nat = 20HP")
   end
end
