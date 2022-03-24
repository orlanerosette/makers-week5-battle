require 'app.rb'

RSpec.describe "/attack" do
  feature "player can attack opponent" do
    scenario "player receives confirmation of attack" do
      sign_in_and_play
      click_button "Attack"
      expect(page).to have_content "Player 1 attacked Player 2!"
    end

    scenario "opponent loses 10 hit points" do
      sign_in_and_play
      click_button "Attack"
      expect(page).to have_content "Player 2 has -10 hit points"

    end
  end
end