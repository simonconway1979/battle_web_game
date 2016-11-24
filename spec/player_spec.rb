require 'player.rb'

describe Player do
  subject(:player) { described_class.new(player_name) }
  let(:player_name) { double :player_name }

  it 'responds to name' do
    expect(player).to respond_to(:name)
  end

  it 'returns the name of the player' do
    expect(player.name).to eq player_name
  end

end
