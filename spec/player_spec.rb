require 'player'

describe Player do
  subject(:player) {described_class.new}

  it "should have name" do
    expect(player.name).to eq Player::DEFAULT_NAME
  end

  it "should have a default starting health" do
    expect(player.health).to eq Player::DEFAULT_HEALTH
  end

  it "should deduct HP when an attack is administered" do
    expect{ player.reduce_life }.to change{ player.health }.by (-Player::HIT_DAMAGE)
  end

end
