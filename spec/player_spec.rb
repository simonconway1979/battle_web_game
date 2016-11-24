require 'player.rb'

describe Player do
  subject(:player) { described_class.new(player_name) }
  let(:player_name) { double :player_name }

  context "when name is called" do
    it 'responds to name' do
      expect(player).to respond_to(:name)
    end

    it 'returns the name of the player' do
      expect(player.name).to eq player_name
    end
  end

  context "when hitpoints is called" do
    it "returns 60 by default" do
      expect(player.hitpoints).to eq 60
     end
  end

  context "when attack is called" do
    it "reduces the hitpoints by 10" do
      player.attacked
      expect(player.hitpoints).to eq 50
    end
  end



end
