require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
     let(:player_1) { double :player }
     let(:player_2) { double :player }

    context '#player_1' do
      it 'retrieves the first player' do
        expect(game.player_1).to eq player_1
      end
    end

    context '#player_2' do
      it 'retrieves the second player' do
        expect(game.player_2).to eq player_2
      end
    end

  it "returns and instance of the game class" do
    expect(game).to be_an_instance_of Game
  end

  it "responds to the attack method" do
    expect(subject).to respond_to :attack
  end

  it 'does 10 damage' do
    allow(player_1).to receive(:deal_damage).and_return(90)
    expect(subject.attack(player_1)).to eq(90)
  end

  describe '#current_turn' do
  it 'starts as player 1' do
    expect(game.current_turn).to eq player_1
  end
end

describe '#switch_turns' do
  it 'switches the turn' do
    game.switch_turns
    expect(game.current_turn).to eq player_2
  end
end

end
