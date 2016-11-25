require 'game'

describe Game do

  let(:player) { double :player }
  #let(:player_1) { double :player_1 }
  subject(:game) { described_class.new(:player_1, :player_2) }


  context "when attacking another player" do

      it { is_expected.to respond_to(:attack).with(1).argument }

      it "inflicts damage on the other player" do
        expect(player).to receive(:attacked)
        game.attack(player)
      end

    end

    it "should be able to show us player 1" do
      expect(game).to respond_to(:players)
    end

    it "should be able to return player 1" do
      expect(game.players[:player_1]).to be_an_instance_of(Player)
    end

    it "should be able to return player 2" do
      expect(game.players[:player_2]).to be_an_instance_of(Player)
    end

    #We think this should be stubbed rather than returning the actual
    #player instance. But we're not quite sure how to do it.

    it "should return player 1's name" do
      expect(game.player_1.name).to eq (:player_1)
    end

    it "should return player 2's name" do
      expect(game.player_2.name).to eq (:player_2)
    end
end
