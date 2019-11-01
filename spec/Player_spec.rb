require 'player'

describe "Player" do
  subject(:dave) {Player.new(Dave.new) }

  describe '#name' do
    it "player returns their name" do
      expect(dave.name).to eq 'Dave'
    end
  end
end
