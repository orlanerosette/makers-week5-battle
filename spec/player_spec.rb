require 'app.rb'

RSpec.describe "Player" do
  it "returns player name" do
    player_1 = Player.new("Player 1")
    expect(player_1.name).to eq "Player 1"
  end

  context "player has been attacked" do
    it "reduces hit points by 10" do
      player_1 = Player.new("Player 1")
      expect(player_1.attacked).to eq -10  
    end
  end
end