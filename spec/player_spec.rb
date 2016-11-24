require 'player'

describe Player do
  subject(:player) {described_class.new}

  it "should have name" do
    expect(player.name).to eq Player::DEFAULT_NAME
  end

  # it "should respond to" do
  #
  # end

end
