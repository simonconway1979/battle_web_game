require 'game'

describe Game do
let (:player1) { double (:player1) }
let (:player2) { double (:player2) }
subject(:game) {described_class.new("Simon", "Dines")}

  it "should allow player 2's life to reduce when player 1 attacks" do
    expect(player1).to receive(:reduce_life)
    game.attack(player1)
  end

  describe "When initalized" do
    it "Should have 2 players" do
      expect(game.players.count).to eq(2)
    end
  end

  describe "Switching turns" do
      it 'should return a boolean when we ask for the turn' do
        expect(game.turn).to eq(true)
      end

      it 'should switch turn' do
        game.switch_turn
        expect(game.turn).to eq(false)
      end
  end


end
