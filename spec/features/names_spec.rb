require 'app.rb'

RSpec.describe "/names" do
  feature "post names" do
    scenario "when player submits name, it returns it in another page" do
      visit('/')
      fill_in 'first_player', with: 'Player 1'
      fill_in 'second_player', with: 'Player 2'
      click_button 'Submit'
      expect(page).to have_content "Welcome Player 1!\nWelcome Player 2!"
    end
  end
end