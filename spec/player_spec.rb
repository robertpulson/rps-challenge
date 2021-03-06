require 'player'

describe Player do

  let (:player) { Player.new }

  it 'can be given a name' do
    player.name_player('Phil')
    expect(player.name).to eq('Phil')
  end

  it 'can make a choice' do
    expect(player).to respond_to(:choose)
  end

  it 'knows which choice it has made on its turn' do
    player.choose(:scissors)
    expect(player.choice).to eq(:scissors)
  end

end