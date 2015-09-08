require_relative '../lib/board.rb'

describe Board do

  let (:board10){ Board.new(10, []) }
  let (:ship1){ double(:ship, cells: [[0,0], [0,1], [0,2]]) }
  let (:ship2){ double(:ship, cells: [[0,10], [1,10], [2,10]]) }
  let (:ship3){ double(:ship, cells: [[0,2], [0,3], [0,4]]) }
  let (:floating_ship){ double(:ship, sunk?: false) }
  let (:sunk_ship){ double(:ship, sunk?: true) }

  it 'takes two arguments' do
    expect(Board).to respond_to(:new).with(2).argument
  end

  it 'makes board object of correct size' do
    expect(board10.size).to eq(10)
  end

  it 'receives in_bounds? with a single argument' do
    expect(board10).to respond_to(:in_bounds?).with(1).argument
  end

  it 'tests whether ship is within bounds' do
    expect(board10).to be_in_bounds(ship1)
    expect(board10).not_to be_in_bounds(ship2)
  end

  it 'receives overlapped? with two arguments' do
    expect(board10).to respond_to(:overlapped?).with(2).argument
  end

  it 'tests whether ships are overlapped' do
    expect(board10).not_to be_overlapped(ship1, ship2)
    expect(board10).to be_overlapped(ship1, ship3)
  end

  it 'receives result? with (at least) one argument' do
    expect(board10).to respond_to(:result?).with(1).argument
  end

  it 'declares the player a loser' do
    expect(board10).not_to be_result(floating_ship, floating_ship, floating_ship)
    expect(board10).to be_result(sunk_ship, sunk_ship, sunk_ship)
  end

  it 'accepts the placement of a ship' do
    # in here, we accept a ship object into the @ships array, testing it using overlapped? and in_bounds? The individual ships need to be initialised themselves with Ship.place. The user passes a ship object to place, with coordinates. The board checks and then places the ship using its own method.

  end

  it 'receives fire with one argument' do
    expect(board10).to respond_to(:fire).with(1).argument
  end

  xit 'fires on all ships and returns any hits' do

  end


end