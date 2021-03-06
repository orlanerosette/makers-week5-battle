require 'app.rb'

RSpec.describe "/play" do
  feature "displays hit points" do
    scenario "shows hit points" do
      sign_in_and_play
      expect(page).to have_content "Player 1 hit points: 0\nPlayer 2 hit points: 0"
    end
  end
end