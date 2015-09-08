require_relative '../lib/board.rb'

describe Board do

  let (:board10){ Board.new(10) }
  let (:ship1){ double(:ship, cells: [[0,0], [0,1], [0,2]]) }
  let (:ship2){ double(:ship, cells: [[0,10], [1,10], [2,10]]) }

  it 'board takes a single argument' do
    expect(Board).to respond_to(:new).with(1).argument
  end

  it 'board makes board object of correct size' do
    expect(board10.size).to eq(10)
  end

  it 'receives in_bounds? with a single argument' do
    expect(board10).to respond_to(:in_bounds?).with(1).argument
  end

  it 'tests whether ship is within bounds' do
    expect(board10).to be_in_bounds(ship1)
    expect(board10).not_to be_in_bounds(ship2)
  end

  xit 'test whether ships are overlapped'

  xit 'announces winner'

  xit 'retuns coordinates of hits and misses so far'

  xit 'knows which players turn is next'

end