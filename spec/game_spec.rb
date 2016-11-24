require 'game'

describe Game do
subject(:game) {described_class.new}
let (:player) { double (:player) }

  it "should allow player 2's life to reduce when player 1 attacks" do
    expect(player).to receive(:reduce_life)
    game.attack(player)
  end

end
