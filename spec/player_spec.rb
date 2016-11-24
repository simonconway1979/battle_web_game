require 'player'

describe Player do
  subject(:player) {described_class.new}

  let (:player2) { double (:player2) }

  it "should have name" do
    expect(player.name).to eq Player::DEFAULT_NAME
  end

  it "should have a default starting health" do
    expect(player.health).to eq Player::DEFAULT_HEALTH
  end

  it "should respond to attack" do
    expect(player).to respond_to(:attack).with(1).argument
  end

  it "should deduct 20 HP when an attack is administered" do
    expect{ player.reduce_life }.to change{ player.health }.by (-20)
  end

  it "should allow player 2's life to reduce when player 1 attacks" do
    allow(player2).to receive(:reduce_life)
    expect(player.attack(player2))
  end

end
