require 'game'

describe Game do

  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:name_1) { double :name_1 }
  subject(:game) { described_class.new(:player_1, :player_2) }


  context "when attacking another player" do

    it { is_expected.to respond_to(:attack).with(1).argument }

    it "inflicts damage on the other player" do
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end

    it "should be able to show us player 1" do
      expect(game).to respond_to(:player_1)
    end

    it "should be able to show us player 2" do
      expect(game).to respond_to(:player_2)
    end

    it "should be able to return player 1" do
      expect(game.player_1).to be_an_instance_of(Player)
    end

    it "should be able to return player 1" do
      expect(game.player_2).to be_an_instance_of(Player)
    end

    #We think this should be stubbed rather than returning the actual
    #player instance. But we're not quite sure how to do it.


  end
end
