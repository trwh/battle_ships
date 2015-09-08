require_relative '../lib/player.rb'

describe Player do

let (:player1){ Player.new(1) }
let (:player2){ Player.new(2) }

it 'takes a single argument' do
      expect(Player).to respond_to(:new).with(1).argument
  end

  it 'knows whather it\'s this player\'s turn' do
    expect(player1).to be_turn
    expect(player2).not_to be_turn
  end

  xit 'knows where the player has fired on the opponent\'s board'

end