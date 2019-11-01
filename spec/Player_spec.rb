require 'player'

describe Player do
  subject(:arjun) {Player.new("Arjun") }
  subject(:natalie) {Player.new('Nat')}

  describe '#name' do
    it "player returns their name" do
      expect(arjun.name).to eq 'Arjun'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(arjun.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(natalie).to receive(:receive_damage)
  #     arjun.attack(natalie)
  #   end
  # end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { arjun.receive_damage }.to change { arjun.hit_points }.by(-10)
    end
  end
end
