require_relative '../lib/player'

describe Player do
  let(:player) { Player.new(name.to_s) }
  describe '#valid_name?' do
    let(:name) { 'Nihal' }
    it 'returns true if valid name' do
      expect(player.valid_name?).to eql(true)
    end
  end

  describe '#valid_name?' do
    let(:name) { '#' }
    it 'returns false if invalid name' do
      expect(player.valid_name?).to eql(false)
    end
  end
end
