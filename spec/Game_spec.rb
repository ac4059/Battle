require 'Game'

describe Game do
  subject(:arjun) {Player.new("Arjun") }
  subject(:natalie) {Player.new('Nat')}
  subject(:game) {Game.new}

  describe '#attack' do
    it 'damages the player' do
      expect(natalie).to receive(:receive_damage)
      game.attack(natalie)
    end
  end
end
