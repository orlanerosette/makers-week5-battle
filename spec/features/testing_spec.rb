require 'app.rb'

RSpec.describe "constructs" do
  feature "testing infrastructure" do
    scenario "states 'Testing infrastructure working!'" do
      visit ('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end
  end
end