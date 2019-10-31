feature "Enter names" do
   scenario "submitting names" do
     sign_in_and_play
     expect(page).to have_text("Arjun vs. Nat")
   end
end

feature "View hit points" do
   scenario "see Player 2's hit points" do
     sign_in_and_play
     expect(page).to have_text("Nat = 20HP")
   end
end
