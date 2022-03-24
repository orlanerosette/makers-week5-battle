require 'app.rb'

RSpec.describe "/play" do
  feature "displays names" do
    scenario "submits player names" do
      sign_in_and_play
      expect(page).to have_content "Welcome Player 1!\nWelcome Player 2!"
    end
  end
end