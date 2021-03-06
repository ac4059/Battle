feature "Enter names" do
   scenario "submitting names" do
     sign_in_and_play
     expect(page).to have_text("Arjun vs. Nat")
   end
end

feature "Attack" do
  scenario "attack player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("Arjun has attacked Nat")
  end

 feature "Reduce HP" do
   scenario "reduce Player 2 HP by 10" do
   sign_in_and_play
   click_button "Attack"
   click_button 'OK'
   expect(page).not_to have_content 'Nat: 60HP'
   expect(page).to have_content 'Nat: 50HP'
 end
end
end
