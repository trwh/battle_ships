require_relative '../lib/player.rb'

describe Player do

let (:player1){ Player.new(1) }
let (:player2){ Player.new(2) }
let (:board_hit){ double(:board, fire: true) }
let (:board_miss){ double(:board, fire: false) }


it 'takes a single argument' do
      expect(Player).to respond_to(:new).with(1).argument
  end

  it 'knows whather it\'s this player\'s turn' do
    expect(player1.turn).to eq true
    expect(player2.turn).to eq false
  end

  it 'knows where the player has fired on the opponent\'s board' do
    player1.fire([0,0])
    player1.fire([0,1])
    player1.fire([0,2])
    expect(player1.hits).to eq [[0,0], [0,1]]
    expect(player1.misses).to eq [[0,2]]
  end

end