require 'app.rb'

RSpec.describe "/attack" do
  feature "can attack opponent" do
    scenario "when player attacks opponent, they receive confirmation of attack" do
      sign_in_and_play
      click_button "Attack"
      expect(page).to have_content "Player 1 attacked Player 2!"
    end
  end
end