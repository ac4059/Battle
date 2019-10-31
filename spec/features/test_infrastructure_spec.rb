feature "Battle" do
  scenario "Testing infrastructure working!" do
    visit "/"
    expect(page).to have_text("Testing infrastructure working!")
  end
end
